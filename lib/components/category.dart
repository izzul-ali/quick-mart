import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String image;
  final String title;
  final Function() onPress;

  const Category({
    super.key,
    required this.image,
    required this.title,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(image),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
