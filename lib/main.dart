import 'package:flutter/material.dart';
import 'package:typingmaster/homescreen.dart';

void main() {
  runApp(const TypingMaster());
}

class TypingMaster extends StatelessWidget {
  const TypingMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
