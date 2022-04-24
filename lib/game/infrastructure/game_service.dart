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

  AsyncFailureOr<Unit> leaveGameRoom(String gameRoomId, Player player) async {
    final result = await safeAsyncCall(() async {
      await _firestore
          .collection(gameRoomsCollection)
          .doc(gameRoomId)
          .collection(playersCollection)
          .doc(player.id)
          .delete();
      return unit;
    });
    return result;
  }

  AsyncFailureOr<Unit> deleteGameRoom(String gameRoomId) async {
    final result = await safeAsyncCall(() async {
      await _firestore
          .collection(gameRoomsCollection)
          .doc(gameRoomId)
          .delete();
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
}
