import 'package:flutter/material.dart';
import 'package:todo/feature/auth/register/bloc/register_event.dart';
import 'package:todo/feature/auth/register/view/register_view.dart';
import 'package:todo/product/container/product_state_items.dart';
import 'package:todo/product/utility/extensions/controller_extensions.dart';

base mixin RegisterViewMixin on State<RegisterView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  void register() {
    if (formKey.currentState?.validate() ?? false) {
      ProductStateItems.registerBloc.add(
        RegisterRequested(
          email: emailController.trimmedText,
          password: passwordController.trimmedText,
          firstName: nameController.trimmedText,
          lastName: surnameController.trimmedText,
        ),
      );
    }
  }
}
