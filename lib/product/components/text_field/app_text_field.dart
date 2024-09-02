import 'package:flutter/material.dart';
import 'package:todo/product/utility/border_radius/app_border_radius.dart';
import 'package:todo/product/utility/extensions/context_extensions.dart';
import 'package:todo/product/utility/extensions/string_extensions.dart';

final class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
    this.suffixIcon,
    this.textInputAction,
    this.keyboardType,
    this.validator,
  });

  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      style: context.textTheme.bodyMedium,
      cursorColor: context.colorScheme.primary,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: AppBorderRadius.circularMedium(),
          borderSide: BorderSide(
            color: context.colorScheme.onSurfaceVariant,
            width: .2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppBorderRadius.circularMedium(),
          borderSide: BorderSide(color: context.colorScheme.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: AppBorderRadius.circularMedium(),
          borderSide: BorderSide(color: context.colorScheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: AppBorderRadius.circularMedium(),
          borderSide: BorderSide(color: context.colorScheme.error),
        ),
        suffixIcon: suffixIcon,
        hintText: hintText.locale,
        hintStyle: context.textTheme.bodyMedium?.copyWith(
          color: context.colorScheme.outline,
        ),
      ),
      validator: validator,
    );
  }
}
