import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/feature/image/view/image_view.dart';
import 'package:todo/product/utility/border_radius/app_border_radius.dart';
import 'package:todo/product/utility/extensions/context_extensions.dart';
import 'package:todo/product/utility/paddings/app_padding.dart';

final class ChatBubble extends StatelessWidget {
  const ChatBubble({
    required this.message,
    required this.isCurrentUser,
    required this.showNip,
    super.key,
    this.imageUrl,
  });

  final String message;
  final bool isCurrentUser;
  final bool showNip;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Bubble(
      color: isCurrentUser ? context.colorScheme.shadow : context.colorScheme.inverseSurface,
      margin: BubbleEdges.only(right: showNip ? 10.w : 18.w, left: 10.w, bottom: 6.h),
      padding: BubbleEdges.all(10.h),
      style: BubbleStyle(radius: Radius.circular(10.r)),
      nip: showNip ? (isCurrentUser ? BubbleNip.rightBottom : BubbleNip.leftBottom) : BubbleNip.no,
      child: Column(
        crossAxisAlignment: isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          if (imageUrl != null && imageUrl!.isNotEmpty)
            InkWell(
              onTap: () => Navigator.of(context).push<void>(ImageView.route(imageUrl!)),
              child: Hero(
                tag: imageUrl!,
                child: ClipRRect(
                  borderRadius: AppBorderRadius.circularSmall(),
                  child: Image.network(
                    imageUrl!,
                    width: 200.w,
                    height: 250.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          if (message.isNotEmpty)
            Padding(
              padding: const AppPadding.smallVertical(),
              child: Text(
                message,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
