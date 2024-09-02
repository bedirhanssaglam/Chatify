import 'package:flutter/foundation.dart' show immutable;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/feature/auth/login/bloc/login_bloc.dart';
import 'package:todo/feature/chat/bloc/chat_bloc.dart';
import 'package:todo/feature/home/bloc/home_bloc.dart';
import 'package:todo/feature/settings/cubit/settings_cubit.dart';
import 'package:todo/product/bloc/app_bloc.dart';
import 'package:todo/product/container/product_state_items.dart';

@immutable
abstract final class ProductProviders {
  const ProductProviders._();

  static final providers = [
    BlocProvider<SettingsCubit>(create: (_) => ProductStateItems.settingsCubit),
    BlocProvider<HomeBloc>(create: (_) => ProductStateItems.homeBloc..add(const HomeEvent.fetchUsers())),
    BlocProvider<AppBloc>(create: (_) => ProductStateItems.appBloc),
    BlocProvider<LoginBloc>(create: (context) => ProductStateItems.loginBloc),
    BlocProvider<ChatBloc>(create: (context) => ProductStateItems.chatBloc),
  ];
}
