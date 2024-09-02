part of '../register_view.dart';

final class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LocaleText(LocaleKeys.register_alreadyHaveAnAccount),
        AppTextButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginView(),
            ),
          ),
          text: LocaleKeys.login_loginButton,
        ),
      ],
    );
  }
}
