import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/components/button.dart';
import 'package:quick_mart_ecommerce/components/logo.dart';
import 'package:quick_mart_ecommerce/styles/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late final PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0, keepPage: true);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        leading: const QuickMartLogo(),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/home', (route) => false);
            },
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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Expanded(
              flex: 10,
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    _currentPageIndex = value;
                  });
                },
                children: [
                  _content(
                    imageUrl: 'assets/logo/buy.png',
                    title: 'Explore a wide range of products',
                    description:
                        'Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs.',
                  ),
                  _content(
                    imageUrl: 'assets/logo/voucher.png',
                    title: 'Unlock exclusive offers and discounts',
                    description:
                        'Get access to limited-time deals and special promotions available only to our valued customers.',
                  ),
                  _content(
                    imageUrl: 'assets/logo/credit_card.png',
                    title: 'Safe and secure payments',
                    description:
                        ' QuickMart employs industry-leading encryption and trusted payment gateways to safeguard your financial information.',
                  ),
                ],
              ),
            ),
            const Spacer(flex: 1),
            SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              onDotClicked: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              effect: const ExpandingDotsEffect(
                dotHeight: 6,
                activeDotColor: COLORS.cyan,
                dotColor: COLORS.grey100,
              ),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  if (_currentPageIndex > 0) ...[
                    Expanded(
                      flex: 1,
                      child: CustomButton(
                        isDark: true,
                        icon: Icons.arrow_back,
                        description: '',
                        onPress: () {
                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                          setState(() {
                            _currentPageIndex--;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 10)
                  ],
                  Expanded(
                    flex: 5,
                    child: CustomButton(
                      isDark: true,
                      description:
                          _currentPageIndex == 2 ? 'Get Started' : 'Next',
                      onPress: () {
                        if (_currentPageIndex == 2) {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/register', (route) => false);
                        } else {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                        setState(() {
                          _currentPageIndex++;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }

  Widget _content({
    required String imageUrl,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Image.asset(imageUrl),
          const SizedBox(height: 100),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: const TextStyle(
              color: COLORS.grey150,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
