import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/feature/chat/bloc/chat_bloc.dart';
import 'package:todo/feature/chat/view/mixin/chat_message_list_mixin.dart';
import 'package:todo/feature/chat/view/widgets/chat_message_item.dart';
import 'package:todo/product/components/text/locale_text.dart';
import 'package:todo/product/init/localization/locale_keys.g.dart';
import 'package:todo/product/service/model/message.dart';
import 'package:todo/product/utility/extensions/list_extensions.dart';

final class ChatMessagesList extends StatefulWidget {
  const ChatMessagesList({
    required this.receiverId,
    super.key,
  });

  final String receiverId;

  @override
  State<ChatMessagesList> createState() => _ChatMessagesListState();
}

final class _ChatMessagesListState extends State<ChatMessagesList> with ChatMessagesListMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.errorMessage?.isNotEmpty ?? false) {
          return Center(child: Text(state.errorMessage ?? ''));
        }

        if (state.messages?.isEmpty ?? true) {
          return Center(child: LocaleText(LocaleKeys.chat_noMessages));
        }

        markMessagesAsSeen(
          messages: state.messages!,
          currentUserId: currentUser.uid,
          chatRoomId: [currentUser.uid, widget.receiverId].generateChatRoomId,
        );

        final messages = state.messages!;

        return ListView.builder(
          controller: scrollController,
          itemCount: messages.length,
          itemBuilder: (context, index) {
            final message = Message.fromDocument(messages[index]);
            final nextMessage = index + 1 < messages.length ? Message.fromDocument(messages[index + 1]) : null;

            return ChatMessageItem(
              message: message,
              currentUserId: currentUser.uid,
              nextMessage: nextMessage,
            );
          },
        );
      },
    );
  }
}
