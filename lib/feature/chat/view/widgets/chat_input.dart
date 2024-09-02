import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/feature/chat/view/mixin/chat_input_mixin.dart';
import 'package:todo/feature/chat/view/widgets/chat_field.dart';
import 'package:todo/feature/chat/view/widgets/send_image_button.dart';
import 'package:todo/product/utility/paddings/app_padding.dart';

final class ChatInput extends StatefulWidget {
  const ChatInput({
    required this.receiverId,
    super.key,
  });

  final String receiverId;

  @override
  State<ChatInput> createState() => _ChatInputState();
}

final class _ChatInputState extends State<ChatInput> with ChatInputMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const AppPadding.mediumAll(),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                ChatField(
                  messageController: messageController,
                  onPressed: sendMessage,
                ),
                10.horizontalSpace,
                SendImageButton(onPressed: () => sendImage(context)),
              ],
            ),
          ),
          8.horizontalSpace,
        ],
      ),
    );
  }
}
