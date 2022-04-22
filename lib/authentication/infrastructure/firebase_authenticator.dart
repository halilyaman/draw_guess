import 'package:draw_guess/core/core.dart';

class FirebaseAuthenticator {
  FirebaseAuthenticator(
    this._googleSignIn,
    this._firebaseAuth,
  );

  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;

  FailureOr<UserCredential?> signInWithGoogle() async {
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

  FailureOr<Unit> signOut() async {
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
}
