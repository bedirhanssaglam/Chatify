import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import 'package:todo/feature/auth/login/bloc/login_bloc.dart';
import 'package:todo/feature/auth/login/bloc/login_state.dart';
import 'package:todo/feature/auth/login/view/mixin/login_view_mixin.dart';
import 'package:todo/feature/auth/register/view/register_view.dart';
import 'package:todo/product/components/button/app_button.dart';
import 'package:todo/product/components/button/app_text_button.dart';
import 'package:todo/product/components/text/locale_text.dart';
import 'package:todo/product/components/text_field/app_text_field.dart';
import 'package:todo/product/init/localization/locale_keys.g.dart';
import 'package:todo/product/utility/extensions/context_extensions.dart';
import 'package:todo/product/utility/extensions/svg_extensions.dart';
import 'package:todo/product/utility/paddings/app_padding.dart';
import 'package:todo/product/utility/validators/email_validator.dart';
import 'package:todo/product/utility/validators/password_validator.dart';

part './widgets/login_header.dart';
part './widgets/register_button.dart';

final class LoginView extends StatefulWidget {
  const LoginView({super.key});

  static Page<void> view() => const MaterialPage<void>(child: LoginView());

  @override
  State<LoginView> createState() => _LoginViewState();
}

final class _LoginViewState extends State<LoginView> with LoginViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const _LoginHeader(),
              Padding(
                padding: const AppPadding.normalHorizontal(),
                child: AppTextField(
                  hintText: LocaleKeys.login_email,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: EmailValidator().validate,
                ),
              ),
              16.verticalSpace,
              Padding(
                padding: const AppPadding.normalHorizontal(),
                child: AppTextField(
                  hintText: LocaleKeys.login_password,
                  controller: passwordController,
                  obscureText: true,
                  validator: PasswordValidator().validate,
                ),
              ),
              60.verticalSpace,
              BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) => state.status.isLoading
                    ? const Center(
                        child: CircularProgressIndicator.adaptive(),
                      )
                    : Padding(
                        padding: const AppPadding.normalHorizontal(),
                        child: AppButton(
                          text: LocaleKeys.login_loginButton,
                          onPressed: login,
                        ),
                      ),
              ),
              20.verticalSpace,
              const _RegisterButton(),
            ],
          ),
        ),
      ),
    );
  }
}
