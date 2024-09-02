import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app.dart';
import 'package:todo/product/container/product_providers.dart';
import 'package:todo/product/container/product_state_items.dart';
import 'package:todo/product/init/app_initialize.dart';
import 'package:todo/product/init/localization/product_localization.dart';
import 'package:todo/product/service/firebase/auth_service.dart';
import 'package:widget/widget.dart';

Future<void> main() async {
  await AppInitialize.initialize();

  final AuthService authService = ProductStateItems.authService;
  await authService.account.first;

  runApp(ProductLocalization(child: _Chatify(authService: authService)));
}

final class _Chatify extends StatelessWidget {
  const _Chatify({
    required AuthService authService,
  }) : _authService = authService;

  final AuthService _authService;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusManager.instance.primaryFocus?.unfocus,
      child: AppResponsive(
        child: RepositoryProvider.value(
          value: _authService,
          child: MultiBlocProvider(
            providers: ProductProviders.providers,
            child: const App(),
          ),
        ),
      ),
    );
  }
}
