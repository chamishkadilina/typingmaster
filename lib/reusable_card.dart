import 'package:flutter/material.dart';
import 'package:typingmaster/card_content.dart';
import 'package:typingmaster/constants.dart';

class ReusableCard extends StatelessWidget {
  final String? textLable;
  final Widget? imagePath;
  final EdgeInsetsGeometry? cardMargin;

  const ReusableCard({
    required this.textLable,
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
          width: kBorderWidth,
          color: kBorderColor,
        ),
        color: kCardColor,
        borderRadius: kborderRadius,
        boxShadow: const [
          kBoxShadowColor1,
          kBoxShadowColor2,
        ],
      ),
      child: CardContent(
        textlable: textLable ?? '',
        imagepath: imagePath,
      ),
    );
  }
}
