import 'package:flutter/material.dart';
import 'package:login_reg_form_for_bei_chat/components/chat_bubble.dart';
import 'package:login_reg_form_for_bei_chat/components/chat_detail_page_appbar.dart';
import 'package:login_reg_form_for_bei_chat/models/chat_message.dart';
import 'package:login_reg_form_for_bei_chat/models/send_menu_items.dart';

enum MessageType {
  sender,
  receiver,
}

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  final List<ChatMessage> chatMessage = [
    ChatMessage(
        message:
            "hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello ",
        type: MessageType.receiver),
    ChatMessage(
        message:
            "hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello ",
        type: MessageType.sender),
    ChatMessage(message: "hi", type: MessageType.receiver),
    ChatMessage(message: "hi", type: MessageType.sender),
    ChatMessage(message: "hi", type: MessageType.receiver),
    ChatMessage(message: "hi", type: MessageType.sender),
    ChatMessage(message: "hi", type: MessageType.receiver),
    ChatMessage(message: "hi", type: MessageType.sender),
    ChatMessage(message: "hi", type: MessageType.receiver),
    ChatMessage(message: "hi", type: MessageType.sender),
    ChatMessage(message: "hi", type: MessageType.receiver),
    ChatMessage(message: "hi", type: MessageType.sender),
  ];

  final List<SendMenuItems> menuItems = [
    SendMenuItems(
        text: "Photos & Videos", icons: Icons.image, color: Colors.amber),
    SendMenuItems(
        text: "Document", icons: Icons.insert_drive_file, color: Colors.blue),
    SendMenuItems(text: "Audio", icons: Icons.music_note, color: Colors.orange),
    SendMenuItems(
        text: "Location", icons: Icons.location_on, color: Colors.yellow),
    SendMenuItems(text: "Contact", icons: Icons.person, color: Colors.purple),
  ];

  void showModal() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height / 2,
            color: const Color(0xff737373),
            child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 2,
                    ),
                    Center(
                      child: Container(
                        height: 4,
                        width: 50,
                        color: Colors.grey.shade200,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    ListView.builder(
                      itemCount: menuItems.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: menuItems[index].color.shade100,
                              ),
                              height: 50,
                              width: 50,
                              child: Icon(
                                menuItems[index].icons,
                                size: 20,
                                color: menuItems[index].color.shade400,
                              ),
                            ),
                            title: Text(menuItems[index].text),
                          ),
                        );
                      },
                    ),
                  ],
                )),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChatDetailPageAppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: ListView.builder(
              itemCount: chatMessage.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10, bottom: 110),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ChatBubble(chatMessage: chatMessage[index]);
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 16, bottom: 10),
              height: 80,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      showModal();
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 21,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 21,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[50],
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Type message...",
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.emoji_emotions,
                              color: Colors.grey.shade400,
                              size: 30,
                            ),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModal();
                    },
                    child: Container(
                      padding: const EdgeInsets.only(right: 15),
                      child: const Icon(
                        Icons.send,
                        color: Colors.green,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
