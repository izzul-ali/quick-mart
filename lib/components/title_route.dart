import 'package:flutter/material.dart';

import '../styles/colors.dart';

class TitleRoute extends StatelessWidget {
  final Function() onPress;
  final String heading;
  final String title;

  const TitleRoute({
    super.key,
    required this.onPress,
    required this.heading,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        TextButton(
          onPressed: onPress,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: COLORS.cyan,
            ),
          ),
        )
      ],
    );
  }
}
