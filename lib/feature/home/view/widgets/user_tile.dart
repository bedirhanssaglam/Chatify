import 'package:flutter/material.dart';
import 'package:todo/product/utility/extensions/context_extensions.dart';
import 'package:todo/product/utility/extensions/string_extensions.dart';

final class UserTile extends StatelessWidget {
  const UserTile({
    super.key,
    required this.fullName,
    this.onTap,
  });

  final String fullName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        child: Text(
          fullName.nameSurnameAvatar,
          style: context.textTheme.bodyLarge?.copyWith(color: context.colorScheme.background),
        ),
      ),
      title: Text(
        fullName,
        style: context.textTheme.bodyLarge?.copyWith(color: context.colorScheme.onBackground),
      ),
    );
  }
}
