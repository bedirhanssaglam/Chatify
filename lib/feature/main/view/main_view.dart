import 'package:flutter/material.dart';
import 'package:todo/feature/home/view/home_view.dart';
import 'package:todo/feature/main/view/mixin/main_view_mixin.dart';
import 'package:todo/feature/settings/view/settings_view.dart';
import 'package:todo/product/components/bottom_nav_bar/app_bottom_navigation_bar.dart';

final class MainView extends StatefulWidget {
  const MainView({super.key});

  static Page<void> view() => const MaterialPage<void>(child: MainView());

  @override
  State<MainView> createState() => _MainViewState();
}

final class _MainViewState extends State<MainView> with MainViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeView(),
          SettingsView(),
        ],
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        onItemTapped: changePage,
        pageIndex: pageIndex,
      ),
    );
  }
}
