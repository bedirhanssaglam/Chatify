import 'package:todo/product/utility/validators/base/base_validator.dart';
import 'package:todo/product/utility/validators/base/product_validators.dart';

final class NormalValidator extends BaseValidator {
  @override
  List<ValidatorFunction> get validators => [
        ProductValidators.require(),
      ];
}
