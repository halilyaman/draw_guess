import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

class GameService {
  GameService(this._firestore, this._auth);

  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  static const gameRoomsCollection = 'gameRooms';
  static const playersCollection = 'players';

  String get currentUserId => _auth.currentUser!.uid;

  AsyncFailureOr<Unit> createGameRoom(GameRoom gameRoom) async {
    final result = await safeAsyncCall(() async {
      await _firestore
          .collection(gameRoomsCollection)
          .doc(gameRoom.id)
          .set(gameRoom.toJson());
      return unit;
    });
    return result;
  }

  AsyncFailureOr<Unit> joinGameRoom(String gameRoomId, Player player) async {
    final result = await safeAsyncCall(() async {
      await _firestore
          .collection(gameRoomsCollection)
          .doc(gameRoomId)
          .collection(playersCollection)
          .doc(player.id)
          .set(player.toJson());
      return unit;
    });
    return result;
  }

  AsyncFailureOr<Unit> leaveGameRoom(String gameRoomId, String playerId) async {
    final result = await safeAsyncCall(() async {
      await _firestore
          .collection(gameRoomsCollection)
          .doc(gameRoomId)
          .collection(playersCollection)
          .doc(playerId)
          .delete();
      return unit;
    });
    return result;
  }

  AsyncFailureOr<Unit> deleteGameRoom(String gameRoomId) async {
    final result = await safeAsyncCall(() async {
      final gameRoomDoc = _firestore
          .collection(gameRoomsCollection)
          .doc(gameRoomId);
      final playersSnapshot = await gameRoomDoc.collection(playersCollection).get();
      for (final playerDoc in playersSnapshot.docs) {
        playerDoc.reference.delete();
      }
      await gameRoomDoc.delete();
      return unit;
    });
    return result;
  }

  AsyncFailureOr<GameRoom?> getGameRoom(String gameRoomId) async {
    final result = safeAsyncCall(() async {
      final snapshot = await _firestore
          .collection(gameRoomsCollection)
          .doc(gameRoomId)
          .get();
      if (snapshot.exists) {
        return GameRoom.fromJson(snapshot.data()!);
      }
    });
    return result;
  }

  AsyncFailureOr<bool> gameRoomExists(String gameRoomId) async {
    final result = safeAsyncCall(() async {
      final gameRoomDoc = _firestore
          .collection(gameRoomsCollection)
          .doc(gameRoomId);
      final docSnapshot = await gameRoomDoc.get();
      return docSnapshot.exists;
    });
    return result;
  }

  AsyncFailureOr<bool> playerNameExists(
      String gameRoomId, String playerName) async {
    final result = safeAsyncCall(() async {
      final playersSnapshot = await _firestore
          .collection(gameRoomsCollection)
          .doc(gameRoomId)
          .collection(playersCollection)
          .where('name', isEqualTo: playerName)
          .get();
      return playersSnapshot.docs.isNotEmpty;
    });
    return result;
  }

  Stream<Player?> getPlayerStream(String gameRoomId, String playerId) {
    return _firestore
        .collection(gameRoomsCollection)
        .doc(gameRoomId)
        .collection('players')
        .doc(playerId)
        .snapshots()
        .map((e) {
      if (e.exists) {
        return Player.fromJson(e.data()!);
      }
      return null;
    });
  }
}
