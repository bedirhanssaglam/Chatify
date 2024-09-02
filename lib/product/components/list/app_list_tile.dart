import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/product/utility/border_radius/app_border_radius.dart';
import 'package:todo/product/utility/extensions/context_extensions.dart';
import 'package:todo/product/utility/extensions/string_extensions.dart';

final class AppListTile extends StatelessWidget {
  const AppListTile({
    required this.title,
    required this.icon,
    super.key,
    this.trailing,
    this.onTap,
    this.additionalInfoText,
    this.leadingColor,
  });

  final String title;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback? onTap;
  final String? additionalInfoText;
  final Color? leadingColor;

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? Card(
            elevation: 0,
            color: Colors.transparent,
            child: ListTile(
              onTap: onTap,
              title: Text(
                title.locale,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.colorScheme.onBackground,
                ),
              ),
              leading: Icon(
                icon,
                size: 18.h,
                color: context.colorScheme.onBackground,
              ),
              trailing: trailing,
            ),
          )
        : CupertinoListTile.notched(
            onTap: onTap,
            title: Text(
              title.locale,
              style: context.textTheme.bodyLarge?.copyWith(
                color: context.colorScheme.onBackground,
              ),
            ),
            leading: Container(
              decoration: BoxDecoration(
                color: leadingColor,
                borderRadius: AppBorderRadius.circularSmall(),
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: 18.h,
                  color: Colors.white,
                ),
              ),
            ),
            additionalInfo: additionalInfoText != null ? Text(additionalInfoText!.locale) : null,
            trailing: trailing,
          );
  }
}
