import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:todo/feature/home/bloc/home_bloc.dart';
import 'package:todo/feature/home/view/home_view.dart';
import 'package:todo/product/container/product_state_items.dart';

base mixin HomeViewMixin on State<HomeView> {
  late final HomeBloc _homeBloc;

  HomeBloc get homeBloc => _homeBloc;
  Account get currentUser => ProductStateItems.appBloc.state.account;

  @override
  void initState() {
    super.initState();
    _homeBloc = ProductStateItems.homeBloc..add(const HomeEvent.fetchUsers());
  }

  Account? getUserByEmail(String email, List<Account> users) {
    return users.firstWhere(
      (account) => account.email == email,
    );
  }

  @override
  void dispose() {
    homeBloc.close();
    super.dispose();
  }
}
