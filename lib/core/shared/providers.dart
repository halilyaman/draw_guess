import 'package:draw_guess/authentication/application/auth_notifier.dart';
import 'package:draw_guess/authentication/authentication.dart';
import 'package:draw_guess/canvas/canvas.dart';
import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/core/core2.dart';
import 'package:draw_guess/game/game.dart';

final _googleSignInProvider = Provider((ref) => GoogleSignIn());

final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);

final _firestoreProvider = Provider((ref) => FirebaseFirestore.instance);

final _databaseProvider = Provider((ref) => FirebaseDatabase.instance);

final _firebaseAuthenticatorProvider = Provider(
  (ref) => FirebaseAuthenticator(
    ref.watch(_googleSignInProvider),
    ref.watch(firebaseAuthProvider),
    ref.watch(_databaseProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(ref.watch(_firebaseAuthenticatorProvider)),
);

final gameServiceProvider = Provider(
  (ref) => GameService(
    ref.watch(firebaseAuthProvider),
    ref.watch(_databaseProvider),
  ),
);

final gameNotifierProvider = StateNotifierProvider<GameNotifier, GameState>(
  (ref) => GameNotifier(ref.watch(gameServiceProvider), ref.read),
);

final drawingBoardNotifierProvider =
    StateNotifierProvider.autoDispose<DrawingBoardNotifier, DrawingBoardState>(
  (ref) => DrawingBoardNotifier(),
);
