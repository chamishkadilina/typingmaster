import 'package:flutter/material.dart';
import 'package:typingmaster/constants.dart';

class CardContent extends StatelessWidget {
  final String? textLable;
  final Widget? imagePath;

  const CardContent({
    required this.textLable,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: kImagePadding,
          child: ClipRRect(
            borderRadius: const BorderRadiusDirectional.only(
              topStart: kBorderRadiusTopStart,
              topEnd: kBorderRadiusTopEnd,
            ),
            child: imagePath,
          ),
        ),
        Padding(
          padding: kContentPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textLable ?? '',
                    style: kCardTextStyle,
                  ),
                  Text(
                    'Practice',
                    style: kCardSubTextStyle,
                  ),
                ],
              ),
              const Icon(kcardIcon),
            ],
          ),
        ),
      ],
    );
  }
}
