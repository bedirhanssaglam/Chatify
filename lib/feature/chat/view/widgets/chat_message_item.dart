import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/feature/chat/view/widgets/chat_bubble.dart';
import 'package:todo/product/service/model/message.dart';
import 'package:todo/product/utility/extensions/context_extensions.dart';
import 'package:todo/product/utility/extensions/time_stamp_extensions.dart';
import 'package:todo/product/utility/paddings/app_padding.dart';

final class ChatMessageItem extends StatelessWidget {
  const ChatMessageItem({
    super.key,
    required this.message,
    required this.currentUserId,
    this.nextMessage,
  });

  final Message message;
  final String currentUserId;
  final Message? nextMessage;

  @override
  Widget build(BuildContext context) {
    final bool isCurrentUser = message.senderId == currentUserId;

    bool showNip = true;
    if (message.type.isText && nextMessage != null) {
      if (nextMessage!.senderId == message.senderId) {
        showNip = false;
      }
    }

    return Align(
      alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const AppPadding.smallVerticalAndHorizontal(),
        child: Column(
          crossAxisAlignment: isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            ChatBubble(
              message: message.message,
              isCurrentUser: isCurrentUser,
              showNip: showNip,
              imageUrl: message.image,
            ),
            Padding(
              padding: const AppPadding.smallHorizontal(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    message.timestamp.toFormattedTime,
                    style: context.textTheme.bodySmall?.copyWith(color: Colors.grey),
                  ),
                  2.horizontalSpace,
                  if (isCurrentUser)
                    Icon(
                      Icons.done_all,
                      color: message.seen ? Colors.blue : Colors.grey,
                      size: 16.h,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
