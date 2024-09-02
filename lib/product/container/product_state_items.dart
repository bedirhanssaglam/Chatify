import 'package:flutter/foundation.dart' show immutable;
import 'package:todo/feature/auth/login/bloc/login_bloc.dart';
import 'package:todo/feature/auth/register/bloc/register_bloc.dart';
import 'package:todo/feature/chat/bloc/chat_bloc.dart';
import 'package:todo/feature/home/bloc/home_bloc.dart';
import 'package:todo/feature/settings/cubit/settings_cubit.dart';
import 'package:todo/product/bloc/app_bloc.dart';
import 'package:todo/product/container/product_state_container.dart';
import 'package:todo/product/service/firebase/auth_service.dart';

@immutable
final class ProductStateItems {
  const ProductStateItems._();

  static SettingsCubit get settingsCubit => ProductContainer.read<SettingsCubit>();
  static AuthService get authService => ProductContainer.read<AuthService>();
  static AppBloc get appBloc => ProductContainer.read<AppBloc>();
  static LoginBloc get loginBloc => ProductContainer.read<LoginBloc>();
  static RegisterBloc get registerBloc => ProductContainer.read<RegisterBloc>();
  static HomeBloc get homeBloc => ProductContainer.read<HomeBloc>();
  static ChatBloc get chatBloc => ProductContainer.read<ChatBloc>();
}
