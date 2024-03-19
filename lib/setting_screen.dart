import 'package:flutter/material.dart';
import 'package:typingmaster/constants.dart';
import 'package:typingmaster/reusable_card.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
            begin: kSettingBeginAlign,
            end: kSettingEndAlign,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(35, 06, 35, 02),
            child: Column(
              children: [
                const Expanded(
                  flex: 8,
                  child: Center(
                    child: Text(
                      'Settings',
                      style: kTitleTextStyle,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Expanded(
                  flex: 22,
                  child: ReusableCard(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Expanded(
                  flex: 98,
                  child: ReusableCard(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 128,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: const Text(
                    'App Version: V1.0.1',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
