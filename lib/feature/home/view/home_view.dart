import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:todo/feature/home/bloc/home_bloc.dart';
import 'package:todo/feature/home/view/mixin/home_view_mixin.dart';
import 'package:todo/feature/home/view/widgets/user_list.dart';
import 'package:todo/product/components/text/locale_text.dart';
import 'package:todo/product/init/localization/locale_keys.g.dart';
import 'package:todo/product/utility/extensions/lottie_extensions.dart';

final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static Page<void> view() => const MaterialPage<void>(child: HomeView());

  @override
  State<HomeView> createState() => _HomeViewState();
}

final class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LocaleText(LocaleKeys.home_appBar),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.when(
            initial: SizedBox.shrink,
            loading: () => Center(
              child: Assets.lottie.loading.show(),
            ),
            loaded: (users) => UserList(users: users),
            error: (message) => Center(
              child: LocaleText(LocaleKeys.error_failedToUsers),
            ),
          );
        },
      ),
    );
  }
}
