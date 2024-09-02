import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/product/utility/extensions/context_extensions.dart';
import 'package:todo/product/utility/extensions/string_extensions.dart';
import 'package:todo/product/utility/paddings/app_padding.dart';

final class AdaptiveListSection extends StatelessWidget {
  const AdaptiveListSection({
    required this.children,
    super.key,
    this.headerText,
    this.footerText,
  });

  final String? headerText;
  final String? footerText;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? Container(
            width: 1.sw,
            margin: const AppPadding.mediumBottom(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (headerText != null)
                  Padding(
                    padding: EdgeInsets.only(left: 18.w, top: 12.h),
                    child: Text(
                      headerText!.locale,
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: context.colorScheme.onBackground,
                      ),
                    ),
                  ),
                ...children,
              ],
            ),
          )
        : CupertinoListSection.insetGrouped(
            backgroundColor: Colors.transparent,
            header: headerText != null
                ? Text(
                    headerText!.locale,
                    style: context.textTheme.titleLarge?.copyWith(
                      color: context.colorScheme.onBackground,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : null,
            footer: footerText != null
                ? Text(
                    footerText!.locale,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onBackground,
                    ),
                  )
                : null,
            children: children,
          );
  }
}
