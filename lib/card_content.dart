import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final Widget? imagepath;

  const CardContent({
    required this.imagepath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: imagepath,
        ),
      ],
    );
  }
}
