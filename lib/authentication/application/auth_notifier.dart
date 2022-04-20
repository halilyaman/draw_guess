import 'package:draw_guess/authentication/authentication.dart';
import 'package:draw_guess/core/core.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.inProgress() = _InProgress;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.failure(Failure failure) = _Failure;
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._firebaseAuthenticator) : super(const AuthState.initial());

  final FirebaseAuthenticator _firebaseAuthenticator;

  Future<void> signIn() async {
    state = const AuthState.inProgress();
    final failureOrSuccess = await _firebaseAuthenticator.signInWithGoogle();
    state = failureOrSuccess.fold(
      (l) => AuthState.failure(l),
      (r) => const AuthState.authenticated(),
    );
  }

  Future<void> signOut() async {
    state = const AuthState.inProgress();
    final failureOrSuccess = await _firebaseAuthenticator.signOut();
    state = failureOrSuccess.fold(
      (l) => AuthState.failure(l),
      (r) => const AuthState.unauthenticated(),
    );
  }

  void isSignedIn() {
    final signedIn = _firebaseAuthenticator.isSignedIn();
    if (signedIn) {
      state = const AuthState.authenticated();
    } else {
      state = const AuthState.unauthenticated();
    }
  }
}
