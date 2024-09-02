import 'package:flutter/material.dart';
import 'package:todo/feature/chat/bloc/chat_bloc.dart';
import 'package:todo/feature/chat/view/widgets/chat_input.dart';
import 'package:todo/product/container/product_state_items.dart';
import 'package:todo/product/image_picker/image_picker_service.dart';
import 'package:todo/product/utility/extensions/controller_extensions.dart';

base mixin ChatInputMixin on State<ChatInput> {
  final TextEditingController messageController = TextEditingController();
  final ImagePickerService imagePickerService = ImagePickerService();

  Future<void> sendImage(BuildContext context) async {
    final image = await imagePickerService.pickImage(context);
    if (image != null) {
      ProductStateItems.chatBloc.add(ChatEvent.sendMessage(widget.receiverId, '', image.path));
    }
  }

  void sendMessage() {
    final message = messageController.trimmedText;
    if (message.isNotEmpty) {
      ProductStateItems.chatBloc.add(ChatEvent.sendMessage(widget.receiverId, message, null));
      messageController.clear();
    }
  }
}
