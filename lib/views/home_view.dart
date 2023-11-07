import 'package:flutter/material.dart';
import '../styles/colors.dart';

import '../components/category.dart';
import '../components/title_route.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Image.asset('assets/logo/quickmart_second.png'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: COLORS.black,
              size: 30,
            ),
          ),
          const CircleAvatar(
            backgroundColor: COLORS.black,
            radius: 18,
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/headset.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),
            TitleRoute(
              heading: 'Categories',
              title: 'SEE ALL',
              onPress: () {},
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Category(
                    onPress: () {},
                    image: 'assets/icons/phone.png',
                    title: 'Electronics',
                  ),
                  const SizedBox(width: 50),
                  Category(
                    onPress: () {},
                    image: 'assets/icons/bag.png',
                    title: 'Fashions',
                  ),
                  const SizedBox(width: 50),
                  Category(
                    onPress: () {},
                    image: 'assets/icons/chair.png',
                    title: 'Furnitures',
                  ),
                  const SizedBox(width: 50),
                  Category(
                    onPress: () {},
                    image: 'assets/icons/car.png',
                    title: 'Industrial',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            TitleRoute(
              heading: 'Latest Products',
              title: 'SEE ALL',
              onPress: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: 'Categoies'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'My Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken_rounded), label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_3_outlined), label: 'Profile'),
        ],
      ),
    );
  }
}
