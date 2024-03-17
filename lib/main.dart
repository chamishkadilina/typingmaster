import 'package:flutter/material.dart' hide NavigationBar;
import 'package:typingmaster/nav_bar.dart';

void main() {
  runApp(const TypingMaster());
}

class TypingMaster extends StatelessWidget {
  const TypingMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigationBar(),
    );
  }
}
