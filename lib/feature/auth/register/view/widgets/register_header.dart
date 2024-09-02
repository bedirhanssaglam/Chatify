part of '../register_view.dart';

final class _RegisterHeader extends StatelessWidget {
  const _RegisterHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        .06.sh.verticalSpace,
        Assets.icons.svgAppIcon.show(height: .2.sh),
        10.verticalSpace,
        LocaleText(
          LocaleKeys.register_letsCreateAnAccount,
          style: context.textTheme.bodyLarge,
        ),
        25.verticalSpace,
      ],
    );
  }
}
