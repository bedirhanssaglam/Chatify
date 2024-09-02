import 'package:flutter/material.dart';

/// Project general padding items
final class AppPadding extends EdgeInsets {
  const AppPadding() : super.all(0);

  const AppPadding.smallAll() : super.all(4);

  const AppPadding.mediumAll() : super.all(8);

  const AppPadding.smallHorizontal() : super.symmetric(horizontal: 8);

  const AppPadding.normalHorizontal() : super.symmetric(horizontal: 24);

  const AppPadding.smallVertical() : super.symmetric(vertical: 4);

  const AppPadding.mediumVertical() : super.symmetric(vertical: 12);

  const AppPadding.smallVerticalAndHorizontal() : super.symmetric(vertical: 4, horizontal: 8);

  const AppPadding.mediumBottom() : super.only(bottom: 20);
}
