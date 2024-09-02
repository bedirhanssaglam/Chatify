import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/product/utility/extensions/context_extensions.dart';
import 'package:todo/product/utility/extensions/string_extensions.dart';

final class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({
    super.key,
    required this.receiverName,
  });

  final String receiverName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text(
              receiverName.nameSurnameAvatar,
              style: const TextStyle(color: Colors.black),
            ),
          ),
          8.horizontalSpace,
          Expanded(
            child: Text(
              receiverName,
              style: context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      backgroundColor: context.colorScheme.onInverseSurface,
      elevation: 0,
      foregroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
