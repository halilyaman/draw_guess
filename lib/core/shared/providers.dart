import 'package:draw_guess/authentication/application/auth_notifier.dart';
import 'package:draw_guess/authentication/authentication.dart';
import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

final _googleSignInProvider = Provider((ref) => GoogleSignIn());

final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);

final _firestoreProvider = Provider((ref) => FirebaseFirestore.instance);

final _firebaseAuthenticatorProvider = Provider(
  (ref) => FirebaseAuthenticator(
    ref.watch(_googleSignInProvider),
    ref.watch(firebaseAuthProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(ref.watch(_firebaseAuthenticatorProvider)),
);

final _gameServiceProvider = Provider(
  (ref) => GameService(
    ref.watch(_firestoreProvider),
    ref.watch(firebaseAuthProvider),
  ),
);

final gameNotifierProvider = StateNotifierProvider<GameNotifier, GameState>(
  (ref) => GameNotifier(ref.watch(_gameServiceProvider)),
);
