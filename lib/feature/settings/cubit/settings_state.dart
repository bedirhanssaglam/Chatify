import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

final class SettingsState extends Equatable {
  const SettingsState({
    this.themeMode = ThemeMode.light,
  });

  final ThemeMode themeMode;

  @override
  List<Object> get props => [themeMode];

  SettingsState copyWith({
    ThemeMode? themeMode,
  }) {
    return SettingsState(
      themeMode: themeMode ?? this.themeMode,
    );
  }
}
