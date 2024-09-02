import 'package:flutter/material.dart';
import 'package:todo/feature/auth/login/bloc/login_event.dart';
import 'package:todo/feature/auth/login/view/login_view.dart';
import 'package:todo/product/container/product_state_items.dart';

base mixin LoginViewMixin on State<LoginView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    if (formKey.currentState?.validate() ?? false) {
      ProductStateItems.loginBloc.add(
        LoginRequested(
          email: emailController.text,
          password: passwordController.text,
        ),
      );
    }
  }
}
