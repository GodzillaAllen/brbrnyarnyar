import 'package:flutter/material.dart';
import 'package:login_reg_form_for_bei_chat/modules/chat_page.dart';
import 'package:login_reg_form_for_bei_chat/modules/friends_page.dart';
import 'package:login_reg_form_for_bei_chat/modules/profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const ChatPage(),
    const FriendsPage(),
    const ProfilePage()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        // selectedItemColor: Colors.green,
        // unselectedItemColor: Colors.grey.shade400,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Freinds",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}
