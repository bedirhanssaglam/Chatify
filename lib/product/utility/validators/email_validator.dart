import 'package:todo/product/init/localization/locale_keys.g.dart';
import 'package:todo/product/utility/constants/regexp_constants.dart';
import 'package:todo/product/utility/extensions/string_extensions.dart';
import 'package:todo/product/utility/validators/base/base_validator.dart';
import 'package:todo/product/utility/validators/base/product_validators.dart';

final class EmailValidator extends BaseValidator {
  @override
  List<ValidatorFunction> get validators => [
        ProductValidators.require(
          message: LocaleKeys.validators_email.locale,
        ),
        ProductValidators.pattern(
          RegexpConstants.emailRegexp.pattern,
          message: LocaleKeys.validators_invalidFormat.locale,
        ),
      ];
}
