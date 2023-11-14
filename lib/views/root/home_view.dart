import 'package:flutter/material.dart';

import '../../components/category.dart';
import '../../components/title_route.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
