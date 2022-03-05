import 'package:flutter/material.dart';
import 'package:login_reg_form_for_bei_chat/components/numbers_widget.dart';
import 'package:login_reg_form_for_bei_chat/components/profile_page_appbar.dart';
import 'package:login_reg_form_for_bei_chat/components/profile_widget.dart';
import 'package:login_reg_form_for_bei_chat/models/profile_data.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final profile = Profile(
        about: "fuck you",
        email: "JawLay@gmail.com",
        name: "Jaw Latt Aung",
        imagePath: ("assets/profile.jpg"));
    return Scaffold(
      appBar: const ProfilePageAppBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: profile.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(
            height: 24,
          ),
          buildName(profile),
          const SizedBox(
            height: 24,
          ),
          const NumbersWidget(),
        ],
      ),
    );
  }

  Widget buildName(Profile profile) => Column(
        children: [
          Text(
            profile.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            profile.email,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      );
}
