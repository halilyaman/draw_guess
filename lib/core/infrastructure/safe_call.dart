import 'package:draw_guess/core/core.dart';

FailureOr<T> safeAsyncCall<T>(Future<T> Function() f) async {
  try {
    final result = await f();
    return right(result);
  } on FirebaseAuthException catch(e) {
    return left(Failure.server('${e.code}: ${e.message}'));
  } on FirebaseException catch(e) {
    return left(Failure.server('${e.code}: ${e.message}'));
  } on PlatformException catch(e) {
    return left(Failure.local('${e.code}: ${e.message}'));
  } on Exception catch(e) {
    return left(Failure.any(e.toString()));
  }
}