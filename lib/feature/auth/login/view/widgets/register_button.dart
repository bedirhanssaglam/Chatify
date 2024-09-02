part of '../login_view.dart';

final class _RegisterButton extends StatelessWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LocaleText(
          LocaleKeys.login_dontHaveAnAccount,
          style: context.textTheme.bodyMedium,
        ),
        AppTextButton(
          onPressed: () => Navigator.of(context).push<void>(RegisterView.route()),
          text: LocaleKeys.login_registerNow,
        ),
      ],
    );
  }
}
