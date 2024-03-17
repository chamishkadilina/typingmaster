import 'package:flutter/material.dart';
import 'package:typingmaster/constants.dart';
import 'package:typingmaster/reusable_card.dart';

class AchievementScreen extends StatefulWidget {
  const AchievementScreen({super.key});

  @override
  State<AchievementScreen> createState() => _AchievementScreenState();
}

class _AchievementScreenState extends State<AchievementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kBackgroundStartColor,
              kBackgroundEndColor,
            ],
            begin: kAchievementBeginAlign,
            end: kAcheivementEndAlign,
          ),
        ),
        child: const SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(35, 00, 35, 02),
            child: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: Center(
                    child: Text(
                      'Achievements',
                      style: kTitleTextStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 90,
                  child: ReusableCard(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 220,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
