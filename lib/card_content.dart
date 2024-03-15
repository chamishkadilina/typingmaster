import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          padding: const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 2),
          child: ClipRRect(
            borderRadius: const BorderRadiusDirectional.only(
              topStart: Radius.circular(8),
              topEnd: Radius.circular(8),
            ),
            child: imagepath,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 6, right: 8, bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textlable ?? '',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Practice',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.5)),
                  ),
                ],
              ),
              const Icon(FontAwesomeIcons.angleRight)
            ],
          ),
        ),
      ],
    );
  }
}
