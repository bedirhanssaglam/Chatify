import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/feature/chat/bloc/chat_bloc.dart';
import 'package:todo/feature/chat/view/widgets/chat_appbar.dart';
import 'package:todo/feature/chat/view/widgets/chat_input.dart';
import 'package:todo/feature/chat/view/widgets/chat_messages_list.dart';
import 'package:todo/product/container/product_state_items.dart';

final class ChatView extends StatefulWidget {
  const ChatView({
    super.key,
    required this.receiverName,
    required this.receiverId,
  });

  final String receiverName;
  final String receiverId;

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  late final ChatBloc chatBloc;

  @override
  void initState() {
    super.initState();
    chatBloc = ProductStateItems.chatBloc
      ..add(
        ChatEvent.loadMessages(
          widget.receiverId,
          ProductStateItems.appBloc.state.account.uid,
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => chatBloc,
      child: Scaffold(
        appBar: ChatAppBar(receiverName: widget.receiverName),
        body: Column(
          children: [
            Expanded(child: ChatMessagesList(receiverId: widget.receiverId)),
            ChatInput(receiverId: widget.receiverId),
          ],
        ),
      ),
    );
  }
}
