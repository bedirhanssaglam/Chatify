import 'package:flutter/material.dart';
import 'package:widget/src/core/dialog_base.dart';

final class ErrorDialog extends StatelessWidget {
  const ErrorDialog({required this.title, super.key, required this.content});

  final String title;

  final String content;

  static Future<void> show(
    BuildContext context, {
    required String title,
    required String content,
  }) async {
    await DialogBase.show<void>(
      context: context,
      builder: (context) => ErrorDialog(title: title, content: content),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      content: Text(content),
      actions: [
        IconButton(
          onPressed: Navigator.of(context).pop,
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}
