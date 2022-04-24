import 'package:draw_guess/core/core.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure{
  const factory Failure.server([String? message]) = _Server;
  const factory Failure.local([String? message]) = _Local;
  const factory Failure.any([String? message]) = _Any;
  const factory Failure.validator(List<ValidatorType> failedValidators) = ValidatorFailure;
}