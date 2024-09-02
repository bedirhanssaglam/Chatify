import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/product/init/localization/locale_keys.g.dart';
import 'package:todo/product/utility/extensions/context_extensions.dart';
import 'package:todo/product/utility/extensions/string_extensions.dart';

typedef OnItemTapped = void Function(int);

final class AppBottomNavigationBar extends StatelessWidget {
  final OnItemTapped onItemTapped;
  final int pageIndex;

  const AppBottomNavigationBar({
    super.key,
    required this.onItemTapped,
    required this.pageIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? _buildMaterialBottomNavigationBar(context) : _buildCupertinoBottomNavBar(context);
  }

  Widget _buildMaterialBottomNavigationBar(BuildContext context) {
    return NavigationBar(
      selectedIndex: pageIndex,
      onDestinationSelected: onItemTapped,
      indicatorColor: context.colorScheme.primary,
      destinations: List.generate(
        _navigationItems.length,
        (index) => NavigationDestination(
          icon: Icon(
            _navigationItems.values.elementAt(index),
            size: 20.h,
            color: pageIndex == index ? Colors.white : context.colorScheme.secondary,
          ),
          label: _navigationItems.keys.elementAt(index).locale,
        ),
      ),
    );
  }

  Widget _buildCupertinoBottomNavBar(BuildContext context) {
    return CupertinoTabBar(
      onTap: onItemTapped,
      currentIndex: pageIndex,
      activeColor: context.colorScheme.primary,
      inactiveColor: context.colorScheme.secondary,
      items: _buildBottomNavBarItems(context),
    );
  }

  List<BottomNavigationBarItem> _buildBottomNavBarItems(BuildContext context) {
    return List.generate(
      _navigationItems.length,
      (index) {
        return BottomNavigationBarItem(
          label: _navigationItems.keys.elementAt(index).locale,
          icon: Icon(
            _navigationItems.values.elementAt(index),
            size: 20,
            color: pageIndex == index ? context.colorScheme.primary : context.colorScheme.secondary,
          ),
        );
      },
    );
  }

  static final Map<String, IconData> _navigationItems = {
    LocaleKeys.bottomNavBar_home: Icons.home,
    LocaleKeys.bottomNavBar_settings: Icons.settings,
  };
}
