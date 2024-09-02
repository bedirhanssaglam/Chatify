import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:widget/src/core/bottom_sheet_base.dart';
import 'package:widget/src/utility/constants/language_constants.dart';
import 'package:widget/src/utility/extensions/context_extensions.dart';

final class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({
    super.key,
    required this.title,
    required this.onTurkishPressed,
    required this.onEnglishPressed,
    this.textStyle,
  });

  final String title;
  final AsyncCallback onTurkishPressed;
  final AsyncCallback onEnglishPressed;
  final TextStyle? textStyle;

  static Future<void> show(
    BuildContext context, {
    required String title,
    required AsyncCallback onTurkishTapped,
    required AsyncCallback onEnglishTapped,
    TextStyle? textStyle,
  }) async {
    await BottomSheetBase.show<void>(
      context: context,
      builder: (context) => LanguageBottomSheet(
        title: title,
        onTurkishPressed: onTurkishTapped,
        onEnglishPressed: onEnglishTapped,
        textStyle: textStyle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? SizedBox(
            height: .2.sh,
            width: 1.sw,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                30.verticalSpace,
                ListTile(
                  onTap: () {
                    onTurkishPressed.call();
                    Navigator.of(context).pop();
                  },
                  title: Text(
                    LanguageConstants.turkish,
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: context.colorScheme.onBackground,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    onEnglishPressed.call();
                    Navigator.of(context).pop();
                  },
                  title: Text(
                    LanguageConstants.english,
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: context.colorScheme.onBackground,
                    ),
                  ),
                ),
              ],
            ),
          )
        : CupertinoActionSheet(
            title: Text(title),
            actions: <CupertinoActionSheetAction>[
              CupertinoActionSheetAction(
                isDefaultAction: true,
                onPressed: () {
                  onTurkishPressed.call().then(
                        (_) => Navigator.maybePop(context),
                      );
                },
                child: Text(
                  LanguageConstants.turkish,
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: context.colorScheme.onBackground,
                  ),
                ),
              ),
              CupertinoActionSheetAction(
                isDefaultAction: true,
                onPressed: () {
                  onEnglishPressed.call().then(
                        (_) => Navigator.maybePop(context),
                      );
                },
                child: Text(
                  LanguageConstants.english,
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: context.colorScheme.onBackground,
                  ),
                ),
              ),
            ],
          );
  }
}
