import 'package:get_it/get_it.dart';
import 'package:todo/feature/auth/login/bloc/login_bloc.dart';
import 'package:todo/feature/auth/register/bloc/register_bloc.dart';
import 'package:todo/feature/chat/bloc/chat_bloc.dart';
import 'package:todo/feature/home/bloc/home_bloc.dart';
import 'package:todo/feature/settings/cubit/settings_cubit.dart';
import 'package:todo/product/bloc/app_bloc.dart';
import 'package:todo/product/service/firebase/auth_service.dart';
import 'package:todo/product/service/firebase/chat_service.dart';

/// Product container for dependency injection
final class ProductContainer {
  const ProductContainer._();

  static final GetIt locator = GetIt.I;

  /// Product core required items
  static void setup() {
    locator.registerLazySingleton<SettingsCubit>(SettingsCubit.new);

    /// Services
    locator.registerLazySingleton<AuthService>(AuthService.new);
    locator.registerLazySingleton<ChatService>(ChatService.new);

    /// Blocs
    locator.registerFactory<AppBloc>(() => AppBloc(authService: locator()));
    locator.registerFactory<LoginBloc>(() => LoginBloc(authRepository: locator()));
    locator.registerFactory<RegisterBloc>(() => RegisterBloc(authRepository: locator()));
    locator.registerFactory<HomeBloc>(() => HomeBloc(chatService: locator()));
    locator.registerFactory<ChatBloc>(() => ChatBloc(locator()));
  }

  /// Read dependency item for [ProductContainer]
  static T read<T extends Object>() => locator<T>();
}
