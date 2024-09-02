import 'package:flutter/material.dart';
import 'package:todo/product/components/text_field/app_text_field.dart';
import 'package:todo/product/init/localization/locale_keys.g.dart';
import 'package:todo/product/utility/border_radius/app_border_radius.dart';
import 'package:todo/product/utility/extensions/context_extensions.dart';
import 'package:todo/product/utility/paddings/app_padding.dart';

final class ChatField extends StatelessWidget {
  const ChatField({
    super.key,
    required this.messageController,
    required this.onPressed,
  });

  final TextEditingController messageController;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AppTextField(
        controller: messageController,
        hintText: LocaleKeys.chat_typeMessage,
        suffixIcon: Padding(
          padding: const AppPadding.smallAll(),
          child: IconButton.filled(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(context.colorScheme.tertiary),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: AppBorderRadius.circularSmall(),
                ),
              ),
            ),
            icon: const Icon(Icons.send, color: Colors.white),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
