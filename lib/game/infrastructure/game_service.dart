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

  DatabaseReference playersRef(String gameRoomId) =>
      _database
          .ref('$playersCollection/$gameRoomId');

  AsyncFailureOr<Unit> createGameRoom(GameRoom gameRoom) async {
    final result = await safeAsyncCall(() async {
      final ref = gameRoomRef(gameRoom.id);
      await ref.set(gameRoom.toJson());
      ref.onDisconnect().set(null);
      return unit;
    });
    return result;
  }

  AsyncFailureOr<Unit> joinGameRoom(String gameRoomId, Player player) async {
    final result = await safeAsyncCall(() async {
      final ref = playersRef(gameRoomId).child(player.name);
      await ref.set(player.toJson());
      ref.onDisconnect().set(null);
      return unit;
    });
    return result;
  }

  AsyncFailureOr<Unit> leaveGameRoom(String gameRoomId, String playerName) async {
    final result = await safeAsyncCall(() async {
      await playersRef(gameRoomId).child(playerName).set(null);
      return unit;
    });
    return result;
  }

  AsyncFailureOr<Unit> deleteGameRoom(String gameRoomId) async {
    final result = await safeAsyncCall(() async {
      await gameRoomRef(gameRoomId).set(null);
      await playersRef(gameRoomId).set(null);
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
      final snapshot = await playersRef(gameRoomId).child(playerName).get();
      return snapshot.exists;
    });
    return result;
  }

  Stream<Player?> playerStream(String gameRoomId, String playerName) {
    return playersRef(gameRoomId)
        .child(playerName)
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
    return playersRef(gameRoomId)
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

  Stream<GameRoom?> gameRoomStream(String gameRoomId) {
    return gameRoomRef(gameRoomId).onValue.map((event) {
      if (!event.snapshot.exists) {
        return null;
      }
      final data = event.snapshot.value as Map;
      return GameRoom.fromJson(data.cast());
    });
  }

  AsyncFailureOr<Unit> startGame(GameRoom gameRoom) async {
    final result = safeAsyncCall(() async {
      gameRoomRef(gameRoom.id).set(gameRoom.copyWith(inGame: true).toJson());
      return unit;
    });
    return result;
  }

  AsyncFailureOr<Unit> endGame(GameRoom gameRoom) async {
    final result = safeAsyncCall(() async {
      gameRoomRef(gameRoom.id).set(gameRoom.copyWith(inGame: false).toJson());
      return unit;
    });
    return result;
  }
}
