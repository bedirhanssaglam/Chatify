import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

final class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.account,
  });

  final Account account;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Text(account.fullName?[0] ?? ''),
    );
  }
}
