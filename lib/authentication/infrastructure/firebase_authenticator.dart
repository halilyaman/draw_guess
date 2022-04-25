import 'package:draw_guess/core/core.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseAuthenticator {
  const FirebaseAuthenticator(
    this._googleSignIn,
    this._firebaseAuth,
    this._database,
  );

  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;
  final FirebaseDatabase _database;

  static const userStatus = 'userStatus';
  static const isOnlineField = 'isOnline';

  AsyncFailureOr<UserCredential?> signInWithGoogle() async {
    final result = await safeAsyncCall<UserCredential?>(() async {
      final account = await _googleSignIn.signIn();
      if (account == null) {
        throw Exception('Google Account not selected!');
      }
      final auth = await account.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: auth.accessToken,
        idToken: auth.idToken,
      );
      final userCredential = await _firebaseAuth.signInWithCredential(
        credential,
      );
      return userCredential;
    });
    return result;
  }

  AsyncFailureOr<Unit> signOut() async {
    final result = await safeAsyncCall<Unit>(() async {
      await _googleSignIn.signOut();
      await _firebaseAuth.signOut();
      return unit;
    });
    return result;
  }

  bool isSignedIn() {
    return _firebaseAuth.currentUser != null;
  }

  AsyncFailureOr<Unit> setUserStatus() async {
    final result = safeAsyncCall(() async {
      final uid = _firebaseAuth.currentUser!.uid;
      final ref = _database.ref('$userStatus/$uid/$isOnlineField');
      ref.set(true);
      ref.onDisconnect().set(false);
      return unit;
    });
    return result;
  }

  StreamSubscription<bool> listenUserOnlineStatus(
    String userId,
    void Function(bool) onChanged,
  ) =>
      _database
          .ref('$userStatus/$userId/$isOnlineField')
          .onValue
          .map((event) => event.snapshot.value as bool)
          .listen(onChanged);
}
