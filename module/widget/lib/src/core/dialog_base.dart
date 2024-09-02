import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Internal usage
final class DialogBase {
  const DialogBase._();

  /// Show a general dialog with
  /// [builder] for the dialog
  /// [barrierDismissible] is false
  /// [useSafeArea] is false
  static Future<T?> show<T>({
    required BuildContext context,
    required WidgetBuilder builder,
  }) async {
    return Platform.isAndroid
        ? showDialog<T>(
            context: context,
            barrierDismissible: false,
            useSafeArea: false,
            builder: builder,
          )
        : showCupertinoDialog<T>(
            context: context,
            builder: builder,
          );
  }
}
