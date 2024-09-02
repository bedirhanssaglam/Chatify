import 'package:easy_localization/easy_localization.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/feature/auth/login/view/login_view.dart';
import 'package:todo/feature/main/view/main_view.dart';
import 'package:todo/feature/settings/cubit/settings_cubit.dart';
import 'package:todo/product/bloc/app_bloc.dart';
import 'package:todo/product/init/theme/manager/dark_theme_manager.dart';
import 'package:todo/product/init/theme/manager/light_theme_manager.dart';

final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlowBuilder<AppStatus>(
        state: context.select<AppBloc, AppStatus>((AppBloc bloc) => bloc.state.status),
        onGeneratePages: _onGenerateAppViewPages,
      ),
      themeMode: context.watch<SettingsCubit>().state.themeMode,
      theme: LightThemeManager().themeData,
      darkTheme: DarkThemeManager().themeData,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }

  static List<Page<dynamic>> _onGenerateAppViewPages(
    AppStatus state,
    List<Page<dynamic>> pages,
  ) {
    switch (state) {
      case AppStatus.authenticated:
        return [MainView.view()];
      case AppStatus.unauthenticated:
        return [LoginView.view()];
    }
  }
}
