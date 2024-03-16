import 'package:flutter/material.dart';
import 'package:typingmaster/constants.dart';
import 'package:typingmaster/reusable_card.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: kScreenPadding,
        child: Column(
          children: [
            Expanded(
              flex: 60,
              child: ReusableCard(),
            ),
            Expanded(
              flex: 20,
              child: SizedBox(
                height: 30,
              ),
            ),
            Expanded(
              flex: 10,
              child: ReusableCard(),
            ),
          ],
        ),
      ),
    ));
  }
}
