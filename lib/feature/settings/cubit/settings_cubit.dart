import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/feature/settings/cubit/settings_state.dart';

final class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState());

  /// Change theme mode
  /// [themeMode] is [ThemeMode.light] or [ThemeMode.dark]
  void changeThemeMode() {
    emit(
      state.copyWith(
        themeMode: state.themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
      ),
    );
  }
}
