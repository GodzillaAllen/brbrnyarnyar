import 'package:flutter/material.dart';
import 'package:login_reg_form_for_bei_chat/modules/chat_detail_page.dart';

class FriendList extends StatefulWidget {
  final String image;
  final String name;
  const FriendList({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  State<FriendList> createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: CircleAvatar(
                backgroundImage: AssetImage(widget.image),
                maxRadius: 20,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              padding: const EdgeInsets.only(right: 10),
              child: Expanded(
                child: Text(
                  widget.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
