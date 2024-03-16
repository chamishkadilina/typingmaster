import 'package:flutter/material.dart';
import 'package:typingmaster/constants.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Screen Testing',
          style: kTitleTextStyle,
        ),
      ),
    );
  }
}
