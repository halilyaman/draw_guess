import 'package:draw_guess/core/core.dart';

typedef AsyncFailureOr<T> = Future<Either<Failure, T>>;
typedef FailureOr<T> = Either<Failure, T>;
