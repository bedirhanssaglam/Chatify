import 'package:gen/gen.dart';
import 'package:lottie/lottie.dart';
import 'package:todo/product/utility/constants/app_constants.dart';

extension LottieExtensions on LottieGenImage {
  LottieBuilder show({double? height}) {
    return Lottie.asset(
      path,
      package: AppConstants.genPackageName,
      height: height,
    );
  }
}
