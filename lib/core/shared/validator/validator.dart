import 'package:draw_guess/core/core.dart';

part 'validator.freezed.dart';

@freezed
class ValidatorType with _$ValidatorType {
  const factory ValidatorType.notEmpty() = _NotEmpty;
}

@freezed
class Validator with _$Validator {
  const factory Validator(List<ValidatorType> validators) = _Validator;

  const Validator._();

  FailureOr<Unit> validate(String text) {
    final failedValidatorTypes = <ValidatorType>[];
    for (final validatorType in validators) {
      final succeed = validatorType.when<bool>(
        notEmpty: () => text.trim().isNotEmpty,
      );
      if (!succeed) {
        failedValidatorTypes.add(validatorType);
      }
    }
    if (failedValidatorTypes.isNotEmpty) {
      return left(ValidatorFailure(failedValidatorTypes));
    }
    return right(unit);
  }
}