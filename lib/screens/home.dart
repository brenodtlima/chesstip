import 'package:chesstip/models/user.dart';
import 'package:chesstip/repositories/user_repository.dart';
import 'package:chesstip/screens/play_screen.dart';
import 'package:chesstip/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import '../components/custom_app_bar.dart';
import '../components/custom_navigation_bar.dart';
import 'friends_screen.dart';
import 'history_screen.dart';

class Home extends StatefulWidget {
  User user = UserRepository.user;
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  late List screens = [
    PlayScreen(),
    HistoryScreen(
      user: widget.user,
    ),
    FriendsScreen(),
    SettingsScreen(),
  ];

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
    );
  }
}
