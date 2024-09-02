import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/feature/settings/cubit/settings_cubit.dart';
import 'package:todo/product/bloc/app_bloc.dart';
import 'package:todo/product/components/list/adaptive_list_section.dart';
import 'package:todo/product/components/list/app_list_tile.dart';
import 'package:todo/product/components/text/locale_text.dart';
import 'package:todo/product/container/product_state_items.dart';
import 'package:todo/product/init/localization/locale_keys.g.dart';
import 'package:todo/product/init/localization/product_localization.dart';
import 'package:todo/product/utility/enums/locale_enums.dart';
import 'package:todo/product/utility/extensions/context_extensions.dart';
import 'package:todo/product/utility/extensions/string_extensions.dart';
import 'package:widget/widget.dart';

final class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      appBar: AppBar(
        title: LocaleText(LocaleKeys.settings_appBar),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AdaptiveListSection(
            headerText: LocaleKeys.settings_general,
            footerText: LocaleKeys.settings_personalizeApp,
            children: [
              AppListTile(
                title: LocaleKeys.settings_language,
                icon: Icons.language,
                onTap: () => LanguageBottomSheet.show(
                  context,
                  onTurkishTapped: () => ProductLocalization.updateLanguage(
                    context,
                    value: Locales.tr,
                  ),
                  title: '',
                  onEnglishTapped: () async => ProductLocalization.updateLanguage(
                    context,
                    value: Locales.en,
                  ),
                ),
                leadingColor: context.colorScheme.primaryContainer,
                trailing: const CupertinoListTileChevron(),
                additionalInfoText: Locales.values
                    .firstWhere(
                      (Locales locale) => locale.locale == context.locale,
                    )
                    .languageName,
              ),
              AppListTile(
                title: LocaleKeys.settings_nightMode,
                icon: Icons.dark_mode,
                onTap: () {},
                leadingColor: context.colorScheme.secondary,
                trailing: Switch.adaptive(
                  value: context.isDarkMode,
                  onChanged: (_) => context.read<SettingsCubit>().changeThemeMode(),
                ),
              ),
            ],
          ),
          AdaptiveListSection(
            children: [
              AppListTile(
                title: LocaleKeys.settings_logOut,
                icon: Icons.logout,
                onTap: () => LogOutDialog.show(
                  context,
                  title: LocaleKeys.dialog_logOut_title.locale,
                  content: LocaleKeys.dialog_logOut_areYouSureLogOut.locale,
                  cancelText: LocaleKeys.dialog_logOut_cancelText.locale,
                  logOutText: LocaleKeys.settings_logOut.locale,
                  onPressed: () => ProductStateItems.appBloc.add(const AppLogoutRequested()),
                ),
                leadingColor: context.colorScheme.error,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
