import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget/src/core/dialog_base.dart';
import 'package:widget/src/utility/extensions/context_extensions.dart';

final class LogOutDialog extends StatelessWidget {
  const LogOutDialog({
    required this.title,
    required this.content,
    required this.onPressed,
    required this.cancelText,
    required this.logOutText,
    super.key,
  });

  final String title;
  final String content;
  final String cancelText;
  final String logOutText;
  final VoidCallback onPressed;

  static Future<void> show(
    BuildContext context, {
    required String title,
    required String content,
    required VoidCallback onPressed,
    required String cancelText,
    required String logOutText,
  }) async {
    await DialogBase.show<void>(
      context: context,
      builder: (context) => LogOutDialog(
        title: title,
        content: content,
        onPressed: onPressed,
        cancelText: cancelText,
        logOutText: logOutText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      content: Text(content),
      actions: [
        CupertinoButton(
          onPressed: Navigator.of(context).pop,
          child: Text(
            cancelText,
            style: context.textTheme.bodyLarge?.copyWith(
              color: context.colorScheme.error,
            ),
          ),
        ),
        CupertinoButton(
          onPressed: () {
            Navigator.of(context).pop();
            onPressed.call();
          },
          child: Text(
            logOutText,
            style: context.textTheme.bodyLarge?.copyWith(
              color: context.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
