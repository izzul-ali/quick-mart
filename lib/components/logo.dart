import 'package:flutter/material.dart';

class QuickMartLogo extends StatelessWidget {
  const QuickMartLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(width: 10),
        Image.asset(
          'assets/logo/quickmart_second.png',
        )
      ],
    );
  }
}
