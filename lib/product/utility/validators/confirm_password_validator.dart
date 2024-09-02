import 'package:todo/product/init/localization/locale_keys.g.dart';
import 'package:todo/product/utility/extensions/string_extensions.dart';
import 'package:todo/product/utility/validators/base/base_validator.dart';
import 'package:todo/product/utility/validators/base/product_validators.dart';

final class ConfirmPasswordValidator extends BaseValidator {
  ConfirmPasswordValidator({required this.firstValue, required this.secondValue});

  final String firstValue;
  final String secondValue;

  @override
  List<ValidatorFunction> get validators => [
        ProductValidators.require(
          message: LocaleKeys.validators_confirmPassword.locale,
        ),
        ProductValidators.equality(
          firstValue,
          secondValue,
          message: LocaleKeys.validators_notMatch.locale,
        ),
      ];
}
