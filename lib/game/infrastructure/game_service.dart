import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/core/core2.dart';
import 'package:draw_guess/game/game.dart';

class GameService {
  const GameService(
    this._firestore,
    this._auth,
    this._database,
  );

  final FirebaseFirestore _firestore;
  final FirebaseDatabase _database;
  final FirebaseAuth _auth;

  static const gameRoomsCollection = 'gameRooms';
  static const playersCollection = 'players';

  String get currentUserId => _auth.currentUser!.uid;

  DatabaseReference gameRoomRef(String id) =>
      _database
          .ref('$gameRoomsCollection/$id');

  AsyncFailureOr<Unit> createGameRoom(GameRoom gameRoom) async {
    final result = await safeAsyncCall(() async {
      await gameRoomRef(gameRoom.id).set(gameRoom.toJson());
      return unit;
    });
    return result;
  }

  AsyncFailureOr<Unit> joinGameRoom(String gameRoomId, Player player) async {
    final result = await safeAsyncCall(() async {
      await gameRoomRef(gameRoomId)
          .child('$playersCollection/${player.name}')
          .set(player.toJson());
      return unit;
    });
    return result;
  }

  AsyncFailureOr<Unit> leaveGameRoom(String gameRoomId, String playerName) async {
    final result = await safeAsyncCall(() async {
      await gameRoomRef(gameRoomId)
          .child('$playersCollection/$playerName')
          .set(null);
      return unit;
    });
    return result;
  }

  AsyncFailureOr<Unit> deleteGameRoom(String gameRoomId) async {
    final result = await safeAsyncCall(() async {
      await gameRoomRef(gameRoomId).set(null);
      return unit;
    });
    return result;
  }

  AsyncFailureOr<GameRoom?> getGameRoom(String gameRoomId) async {
    final result = safeAsyncCall(() async {
      final snapshot = await gameRoomRef(gameRoomId).get();
      if (snapshot.exists) {
        final data = snapshot.value as Map;
        return GameRoom.fromJson(data.cast());
      }
    });
    return result;
  }

  AsyncFailureOr<bool> gameRoomExists(String gameRoomId) async {
    final result = safeAsyncCall(() async {
      final docSnapshot = await gameRoomRef(gameRoomId).get();
      return docSnapshot.exists;
    });
    return result;
  }

  AsyncFailureOr<bool> playerNameExists(
      String gameRoomId, String playerName) async {
    final result = safeAsyncCall(() async {
      final snapshot = await gameRoomRef(gameRoomId)
          .child('$playersCollection/$playerName')
          .get();
      return snapshot.exists;
    });
    return result;
  }

  Stream<Player?> playerStream(String gameRoomId, String playerName) {
    return gameRoomRef(gameRoomId)
        .child('$playersCollection/$playerName')
        .onValue
        .map((event) {
      if (!event.snapshot.exists) {
        return null;
      }
      final data = event.snapshot.value as Map;
      return Player.fromJson(data.cast());
    });
  }

  Stream<List<Player>> playersInGameRoomStream(String gameRoomId) {
    return gameRoomRef(gameRoomId)
        .child(playersCollection)
        .onValue
        .map((event) {
      if (event.snapshot.value == null) {
        return [];
      }
      final playersMap = event.snapshot.value as Map;
      return playersMap.keys
          .map((e) => Player.fromJson((playersMap[e] as Map).cast()))
          .toList();
    });
  }
}
