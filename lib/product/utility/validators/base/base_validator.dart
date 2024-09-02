typedef ValidatorFunction = String? Function(String? value);

/// Source: https://github.com/bedirhanssaglam/flutter-validators-use-case
abstract class BaseValidator {
  abstract final List<ValidatorFunction> validators;

  String? validate(String? value) {
    for (final validator in validators) {
      final result = validator(value);
      if (result != null) {
        return result;
      }
    }
    return null;
  }
}
