import 'package:flutter/material.dart';
import 'package:login_reg_form_for_bei_chat/components/chat.dart';
import 'package:login_reg_form_for_bei_chat/models/chat_users.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        text: "text",
        secondaryText: "secondaryText",
        image: "image",
        time: "time"),
    ChatUsers(
        text: "text",
        secondaryText: "secondaryText",
        image: "image",
        time: "time"),
    ChatUsers(
        text: "text",
        secondaryText: "secondaryText",
        image: "image",
        time: "time"),
    ChatUsers(
        text: "text",
        secondaryText: "secondaryText",
        image: "image",
        time: "time"),
    ChatUsers(
        text: "text",
        secondaryText: "secondaryText",
        image: "image",
        time: "time"),
    ChatUsers(
        text: "text",
        secondaryText: "secondaryText",
        image: "image",
        time: "time"),
    ChatUsers(
        text: "text",
        secondaryText: "secondaryText",
        image: "image",
        time: "time"),
    ChatUsers(
        text: "text",
        secondaryText: "secondaryText",
        image: "image",
        time: "time"),
    ChatUsers(
        text: "text",
        secondaryText: "secondaryText",
        image: "image",
        time: "time"),
    ChatUsers(
        text: "text",
        secondaryText: "secondaryText",
        image: "image",
        time: "time"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Chats",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 2, bottom: 2),
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.green[50],
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.add, color: Colors.green, size: 20),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "New",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search ...",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade400,
                        size: 20,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      contentPadding: const EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.grey.shade100))),
                ),
              ),
              ListView.builder(
                itemCount: chatUsers.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ChatUsersList(
                    text: chatUsers[index].text,
                    secondaryText: chatUsers[index].secondaryText,
                    image: chatUsers[index].image,
                    time: chatUsers[index].time,
                    isMessageRead:
                        (index == 1 || index == 3 || index == 5) ? true : false,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
