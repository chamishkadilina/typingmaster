import 'package:flutter/material.dart';
import 'package:typingmaster/card_content.dart';

class ReusableCard extends StatelessWidget {
  final Widget? imagePath;
  final EdgeInsetsGeometry? cardMargin;

  const ReusableCard({
    required this.imagePath,
    required this.cardMargin,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: cardMargin,
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: Colors.white,
        ),
        color: const Color(0xFFDFC8FF),
        borderRadius: BorderRadius.circular(18.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(255, 255, 255, 0.9),
            blurRadius: 20,
            spreadRadius: 2,
            offset: Offset(-7, -7),
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 20,
            spreadRadius: 2,
            offset: Offset(7, 7),
          ),
        ],
      ),
      child: CardContent(
        imagepath: imagePath,
      ),
    );
  }
}
