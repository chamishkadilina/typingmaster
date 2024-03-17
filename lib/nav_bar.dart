import 'package:flutter/material.dart';
import 'package:typingmaster/achievement_screen.dart';
import 'package:typingmaster/home_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:typingmaster/setting_screen.dart';
import 'package:typingmaster/static_screen.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({super.key});

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: GNav(
            backgroundColor: Colors.black,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            color: Colors.white,
            activeColor: Colors.white,
            padding: const EdgeInsets.all(16),
            onTabChange: (index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.bar_chart,
                text: 'Statics',
              ),
              GButton(
                icon: Icons.auto_graph_sharp,
                text: 'Badges',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
      body: const [
        HomeScreen(),
        StaticScreen(),
        AchievementScreen(),
        SettingScreen(),
      ][currentPageIndex],
    );
  }
}
