import 'package:flutter/material.dart';
import '../../components/button.dart';
import '../../styles/colors.dart';

class OnBoardingThreeView extends StatelessWidget {
  const OnBoardingThreeView({super.key});

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
            Image.asset('assets/logo/credit_card.png'),
            const SizedBox(height: 100),
            const Text(
              'Safe and secure payments',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              ' QuickMart employs industry-leading encryption and trusted payment gateways to safeguard your financial information.',
              style: TextStyle(
                color: COLORS.grey150,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    weight: FontWeight.w600,
                    isDark: false,
                    description: 'Login',
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    isDark: true,
                    icon: Icons.arrow_right_alt_rounded,
                    description: 'Get Started',
                    onPress: () => Navigator.of(context)
                        .pushNamedAndRemoveUntil('/home', (route) => false),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
