import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:todo/feature/chat/view/chat_view.dart';
import 'package:todo/feature/home/view/widgets/user_tile.dart';
import 'package:todo/product/container/product_state_items.dart';
import 'package:todo/product/utility/paddings/app_padding.dart';

final class UserList extends StatelessWidget {
  const UserList({
    super.key,
    required this.users,
  });

  final List<Account> users;

  @override
  Widget build(BuildContext context) {
    final Account currentUser = ProductStateItems.appBloc.state.account;

    if (users.isEmpty) return const SizedBox.shrink();

    return ListView.builder(
      itemCount: users.length,
      padding: const AppPadding.mediumVertical(),
      itemBuilder: (context, index) {
        final Account user = users[index];
        if (user.email != currentUser.email) {
          return UserTile(
            fullName: user.fullName ?? '',
            onTap: () => _navigateToChat(context, user),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  void _navigateToChat(BuildContext context, Account account) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatView(
          receiverName: account.fullName ?? '',
          receiverId: account.uid,
        ),
      ),
    );
  }
}
