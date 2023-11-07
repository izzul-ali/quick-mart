import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/styles/colors.dart';

class CustomButton extends StatelessWidget {
  final String description;
  final bool isDark;
  final FontWeight? weight;
  final IconData? icon;
  final Function() onPress;

  const CustomButton({
    super.key,
    required this.description,
    required this.onPress,
    required this.isDark,
    this.weight,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPress,
        style: ButtonStyle(
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
          ),
          backgroundColor:
              MaterialStatePropertyAll(isDark ? COLORS.black : COLORS.white),
          minimumSize: const MaterialStatePropertyAll(
            Size(0, 60),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              description,
              style: TextStyle(
                fontWeight: weight ?? FontWeight.normal,
                color: isDark ? COLORS.white : COLORS.black,
              ),
            ),
            const SizedBox(width: 5),
            icon != null
                ? Icon(
                    icon,
                    color: isDark ? COLORS.white : COLORS.black,
                  )
                : const SizedBox.shrink(),
          ],
        ));
  }
}
