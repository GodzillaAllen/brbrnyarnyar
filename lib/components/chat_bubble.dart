import 'package:flutter/material.dart';
import 'package:login_reg_form_for_bei_chat/models/chat_message.dart';
import 'package:login_reg_form_for_bei_chat/modules/chat_detail_page.dart';

class ChatBubble extends StatefulWidget {
  final ChatMessage chatMessage;
  const ChatBubble({Key? key, required this.chatMessage}) : super(key: key);

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: (widget.chatMessage.type == MessageType.receiver
          ? const EdgeInsets.only(
              right: 50,
              left: 25,
              top: 10,
              bottom: 10,
            )
          : const EdgeInsets.only(
              left: 50,
              right: 15,
              top: 10,
              bottom: 10,
            )),
      child: Align(
        alignment: (widget.chatMessage.type == MessageType.receiver
            ? Alignment.topLeft
            : Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: (widget.chatMessage.type == MessageType.receiver
                ? Colors.white
                : Colors.grey.shade400),
          ),
          padding:
              const EdgeInsets.only(left: 15, right: 16, top: 10, bottom: 10),
          child: Text(widget.chatMessage.message),
        ),
      ),
    );
  }
}
