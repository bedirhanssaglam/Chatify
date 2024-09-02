import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gen/gen.dart';
import 'package:todo/product/utility/constants/app_constants.dart';

extension SvgGenImageExtension on SvgGenImage {
  SvgPicture show({
    double? height,
    BoxFit fit = BoxFit.contain,
  }) {
    return SvgPicture.asset(
      path,
      package: AppConstants.genPackageName,
      height: height,
      fit: fit,
    );
  }
}
