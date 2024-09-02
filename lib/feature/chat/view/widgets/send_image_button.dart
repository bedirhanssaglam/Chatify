import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/product/utility/border_radius/app_border_radius.dart';
import 'package:todo/product/utility/extensions/context_extensions.dart';

final class SendImageButton extends StatelessWidget {
  const SendImageButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      width: 42.w,
      child: IconButton.filled(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(context.colorScheme.tertiaryContainer),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: AppBorderRadius.circularSmall(),
            ),
          ),
        ),
        icon: const Icon(Icons.photo, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }
}
