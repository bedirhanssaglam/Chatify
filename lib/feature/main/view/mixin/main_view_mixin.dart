import 'package:flutter/material.dart';
import 'package:todo/feature/main/view/main_view.dart';

base mixin MainViewMixin on State<MainView> {
  final PageController pageController = PageController();

  int pageIndex = 0;

  void changePage(int index) {
    pageIndex = index;
    pageController.jumpToPage(index);
    setState(() {});
  }
}
