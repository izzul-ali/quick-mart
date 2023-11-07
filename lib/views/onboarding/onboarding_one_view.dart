import 'package:flutter/material.dart';
import '../../components/button.dart';
import '../../styles/colors.dart';

class OnBoardingOneView extends StatelessWidget {
  const OnBoardingOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset('assets/logo/quickmart_second.png'),
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
            Image.asset('assets/logo/buy.png'),
            const SizedBox(height: 100),
            const Text(
              'Explore a wide range of products',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs.',
              style: TextStyle(
                color: COLORS.grey150,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            CustomButton(
                isDark: true,
                description: 'Next',
                onPress: () => Navigator.of(context).pushNamed('/onboarding-2'))
          ],
        ),
      ),
    );
  }
}
