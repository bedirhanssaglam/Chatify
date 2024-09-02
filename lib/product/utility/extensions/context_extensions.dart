import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/feature/settings/cubit/settings_cubit.dart';

extension ContextExtensions on BuildContext {
  ThemeData get themeData => Theme.of(this);

  TextTheme get textTheme => themeData.textTheme;
  ColorScheme get colorScheme => themeData.colorScheme;

  Size get size => MediaQuery.sizeOf(this);

  double get screenHeight => size.height;
  double get screenWidth => size.width;

  bool get isDarkMode => select<SettingsCubit, bool>(
        (SettingsCubit viewModel) => viewModel.state.themeMode == ThemeMode.dark,
      );
}
