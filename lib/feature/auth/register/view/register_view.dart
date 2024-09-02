import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import 'package:todo/feature/auth/login/view/login_view.dart';
import 'package:todo/feature/auth/register/bloc/register_bloc.dart';
import 'package:todo/feature/auth/register/view/mixin/register_view_mixin.dart';
import 'package:todo/product/components/button/app_button.dart';
import 'package:todo/product/components/button/app_text_button.dart';
import 'package:todo/product/components/text/locale_text.dart';
import 'package:todo/product/components/text_field/app_text_field.dart';
import 'package:todo/product/container/product_state_items.dart';
import 'package:todo/product/init/localization/locale_keys.g.dart';
import 'package:todo/product/utility/extensions/context_extensions.dart';
import 'package:todo/product/utility/extensions/svg_extensions.dart';
import 'package:todo/product/utility/paddings/app_padding.dart';
import 'package:todo/product/utility/validators/confirm_password_validator.dart';
import 'package:todo/product/utility/validators/email_validator.dart';
import 'package:todo/product/utility/validators/normal_validator.dart';
import 'package:todo/product/utility/validators/password_validator.dart';

part './widgets/login_button.dart';
part './widgets/register_header.dart';

final class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const RegisterView());
  }

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

final class _RegisterViewState extends State<RegisterView> with RegisterViewMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create: (context) => ProductStateItems.registerBloc,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const AppPadding.normalHorizontal(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const _RegisterHeader(),
                AppTextField(
                  controller: nameController,
                  hintText: LocaleKeys.register_name,
                  validator: NormalValidator().validate,
                ),
                10.verticalSpace,
                AppTextField(
                  controller: surnameController,
                  hintText: LocaleKeys.register_surname,
                  validator: NormalValidator().validate,
                ),
                10.verticalSpace,
                AppTextField(
                  controller: emailController,
                  hintText: LocaleKeys.login_email,
                  validator: EmailValidator().validate,
                ),
                10.verticalSpace,
                AppTextField(
                  controller: passwordController,
                  hintText: LocaleKeys.login_password,
                  obscureText: true,
                  validator: PasswordValidator().validate,
                ),
                10.verticalSpace,
                AppTextField(
                  controller: confirmPasswordController,
                  hintText: LocaleKeys.register_confirmPassword,
                  obscureText: true,
                  validator: ConfirmPasswordValidator(
                    firstValue: passwordController.text,
                    secondValue: confirmPasswordController.text,
                  ).validate,
                ),
                25.verticalSpace,
                AppButton(
                  onPressed: register,
                  text: LocaleKeys.register_registerButton,
                ),
                12.verticalSpace,
                const _LoginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
