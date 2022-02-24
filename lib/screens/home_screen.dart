import 'package:flutter/material.dart';
import 'package:login_reg_form_for_bei_chat/modules/chat_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var activePage = const ChatPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey.shade400,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                setState(() {
                  activePage = const ChatPage();
                });
              },
              child: const Icon(Icons.message),
            ),
            label: "chat",
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                setState(() {
                  activePage = const ChatPage();
                });
              },
              child: const Icon(Icons.group),
            ),
            label: "Group",
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                setState(() {
                  activePage = const ChatPage();
                });
              },
              child: const Icon(Icons.person),
            ),
            label: "Profile",
          ),
        ],
      ),
      body: activePage,
    );
  }
}
