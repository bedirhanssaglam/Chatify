import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:todo/feature/chat/bloc/chat_bloc.dart';
import 'package:todo/feature/chat/view/widgets/chat_messages_list.dart';
import 'package:todo/product/container/product_state_items.dart';

base mixin ChatMessagesListMixin on State<ChatMessagesList> {
  final Account currentUser = ProductStateItems.appBloc.state.account;
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    _scrollToBottom();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.jumpTo(scrollController.position.maxScrollExtent);
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void markMessagesAsSeen({
    required List<DocumentSnapshot<Object?>> messages,
    required String currentUserId,
    required String chatRoomId,
  }) {
    for (final message in messages) {
      final data = message.data() as Map<String, dynamic>;
      final bool isSeen = data['seen'] ?? false;

      if (data['senderId'] != currentUserId && !isSeen) {
        ProductStateItems.chatBloc.add(ChatEvent.markMessageAsSeen(chatRoomId, message.id));
      }
    }
  }
}
