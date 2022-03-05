import 'package:flutter/material.dart';
import 'package:login_reg_form_for_bei_chat/components/friend_page_appbar.dart';
import 'package:login_reg_form_for_bei_chat/components/friends_list.dart';
import 'package:login_reg_form_for_bei_chat/models/friends_data.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  List<Friends> friendList = [
    Friends(name: "kyaw kyaw ", image: "image"),
    Friends(name: "kyaw kyaw ", image: "image"),
    Friends(name: "kyaw kyaw ", image: "image"),
    Friends(name: "kyaw kyaw ", image: "image"),
    Friends(name: "kyaw kyaw ", image: "image"),
    Friends(name: "kyaw kyaw ", image: "image"),
    Friends(name: "kyaw kyaw ", image: "image"),
    Friends(name: "kyaw kyaw ", image: "image"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FriendPageAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListView.builder(
              itemCount: friendList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return FriendList(
                    image: friendList[index].image,
                    name: friendList[index].name);
              },
            ),
          ],
        ),
      ),
    );
  }
}
