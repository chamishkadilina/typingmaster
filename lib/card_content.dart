import 'package:flutter/material.dart';
import 'package:typingmaster/constants.dart';

class CardContent extends StatelessWidget {
  final String? textlable;
  final Widget? imagepath;

  const CardContent({
    required this.textlable,
    required this.imagepath,
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
            child: imagepath,
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
                    textlable ?? '',
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
