import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/components/product_card.dart';

import '../../components/category.dart';
import '../../components/title_route.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
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
          const SizedBox(height: 10),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 4,
              crossAxisSpacing: 15,
              mainAxisSpacing: 20,
            ),
            addAutomaticKeepAlives: true,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (ctx, index) => GestureDetector(
              onTap: () {
                print('tap');
              },
              child: const ProductCard(
                name: '0X-123 Apache Space X',
                price: 'Rp.20.000.000',
                discount: 'Rp.15.0000',
                image:
                    'https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                colors: [Colors.black, Colors.yellow],
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
