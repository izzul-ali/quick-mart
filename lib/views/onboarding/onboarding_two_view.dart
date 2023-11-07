import 'package:flutter/material.dart';
import '../../components/button.dart';
import '../../styles/colors.dart';

class OnBoardingTwoView extends StatelessWidget {
  const OnBoardingTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: COLORS.black,
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skip for now',
              style: TextStyle(
                color: COLORS.cyan,
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/logo/voucher.png'),
            const SizedBox(height: 100),
            const Text(
              'Unlock exclusive offers and discounts',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'Get access to limited-time deals and special promotions available only to our valued customers.',
              style: TextStyle(
                color: COLORS.grey150,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            CustomButton(
                isDark: true,
                description: 'Next',
                onPress: () => Navigator.of(context).pushNamed('/onboarding-3'))
          ],
        ),
      ),
    );
  }
}
