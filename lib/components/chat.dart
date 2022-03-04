import 'package:flutter/material.dart';
import 'package:login_reg_form_for_bei_chat/modules/chat_detail_page.dart';

class ChatUsersList extends StatefulWidget {
  final String text;
  final String secondaryText;
  final String image;
  final String time;
  final bool isMessageRead;
  const ChatUsersList({
    Key? key,
    required this.text,
    required this.secondaryText,
    required this.image,
    required this.time,
    required this.isMessageRead,
  }) : super(key: key);

  @override
  State<ChatUsersList> createState() => _ChatUsersListState();
}

class _ChatUsersListState extends State<ChatUsersList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (builder) {
          return const ChatDetailPage();
        }));
      },
      child: Container(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.image),
                    maxRadius: 30,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    color: Colors.transparent,
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.text,
                            style: TextStyle(
                              color: widget.isMessageRead
                                  ? Colors.green
                                  : Colors.black,
                              fontWeight: widget.isMessageRead
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            widget.secondaryText,
                            style: TextStyle(
                              fontSize: 14,
                              color: widget.isMessageRead
                                  ? Colors.green
                                  : Colors.grey.shade500,
                              fontWeight: widget.isMessageRead
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text(
              widget.time,
              style: TextStyle(
                fontSize: 12,
                color:
                    widget.isMessageRead ? Colors.green : Colors.grey.shade500,
                fontWeight:
                    widget.isMessageRead ? FontWeight.bold : FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
