import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './styles/colors.dart';

import './views/onboarding/onboarding_one_view.dart';
import './views/onboarding/onboarding_three_view.dart';
import './views/onboarding/onboarding_two_view.dart';
import './views/root/root_view.dart';
import './views/splash_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const QuickMartApp());
}

class QuickMartApp extends StatelessWidget {
  const QuickMartApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isNewUser = true;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Plus Jakarta Sans',
        primaryIconTheme: const IconThemeData(
          color: COLORS.black,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: COLORS.black,
          unselectedItemColor: COLORS.grey150,
          selectedIconTheme: IconThemeData(color: COLORS.cyan),
          unselectedIconTheme: IconThemeData(color: COLORS.grey150),
          selectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      routes: {
        '/splash': (context) => const SplashView(),
        '/home': (context) => const RootView(),
        '/onboarding-1': (context) => const OnBoardingOneView(),
        '/onboarding-2': (context) => const OnBoardingTwoView(),
        '/onboarding-3': (context) => const OnBoardingThreeView(),
      },
      home: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 2)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashView();
          }

          if (isNewUser) {
            return const OnBoardingOneView();
          }

          return const RootView();
        },
      ),
    );
  }
}
