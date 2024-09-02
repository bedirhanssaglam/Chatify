import 'package:todo/product/init/localization/locale_keys.g.dart';
import 'package:todo/product/utility/extensions/string_extensions.dart';
import 'package:todo/product/utility/validators/base/base_validator.dart';

final class ProductValidators {
  final List<ValidatorFunction> _validators = [];

  ProductValidators add(ValidatorFunction validator) {
    _validators.add(validator);
    return this;
  }

  static ValidatorFunction require({String? message}) {
    return (value) {
      if (value == null || value.isEmpty) {
        return message ?? LocaleKeys.validators_normal.locale;
      }
      return null;
    };
  }

  static ValidatorFunction pattern(String pattern, {String? message}) {
    return (value) {
      final regex = RegExp(pattern);
      if (value != null && !regex.hasMatch(value)) {
        return message ?? LocaleKeys.validators_invalidFormat.locale;
      }
      return null;
    };
  }

  static ValidatorFunction equality(
    String firstValue,
    String secondValue, {
    required String message,
  }) {
    return (value) {
      if (firstValue != secondValue) return message;
      return null;
    };
  }
}
