part of '../login_view.dart';

final class _LoginHeader extends StatelessWidget {
  const _LoginHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        .15.sh.verticalSpace,
        Assets.icons.svgAppIcon.show(height: .2.sh),
        10.verticalSpace,
        LocaleText(
          LocaleKeys.login_welcomeText,
          style: context.textTheme.headlineSmall?.copyWith(
            color: context.colorScheme.primary,
          ),
        ),
        50.verticalSpace,
      ],
    );
  }
}
