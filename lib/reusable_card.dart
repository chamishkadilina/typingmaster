import 'package:flutter/material.dart';
import 'package:typingmaster/constants.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final BorderRadiusGeometry? borderRadius;
  final Widget? cardChild;
  final void Function()? onPress;
  final EdgeInsetsGeometry? cardMargin;

  const ReusableCard({
    this.color = kCardColor,
    required this.borderRadius,
    this.cardChild,
    this.onPress,
    this.cardMargin,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: cardMargin,
        decoration: BoxDecoration(
          border: Border.all(
            width: kBorderWidth,
            color: kBorderColor,
          ),
          color: color,
          borderRadius: borderRadius,
          boxShadow: const [
            kBoxShadowColor1,
            kBoxShadowColor2,
          ],
        ),
        child: cardChild,
      ),
    );
  }
}
