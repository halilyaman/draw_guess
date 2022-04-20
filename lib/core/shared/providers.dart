import 'package:draw_guess/authentication/application/auth_notifier.dart';
import 'package:draw_guess/authentication/authentication.dart';
import 'package:draw_guess/core/core.dart';

final _googleSignInProvider = Provider((ref) => GoogleSignIn());

final _firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);

final _firestoreProvider = Provider((ref) => FirebaseFirestore.instance);

final _firebaseAuthenticatorProvider = Provider(
  (ref) => FirebaseAuthenticator(
    ref.watch(_googleSignInProvider),
    ref.watch(_firebaseAuthProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(ref.watch(_firebaseAuthenticatorProvider)),
);
