import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/views/root/category_view.dart';
import 'package:quick_mart_ecommerce/views/root/home_view.dart';
import '../../styles/colors.dart';

class RootView extends StatefulWidget {
  final int? selectedTab;

  const RootView({super.key, this.selectedTab});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  int _index = 0;

  final _buildBody = <Widget>[
    const HomeView(),
    const CategoryView(),
    const HomeView(),
    const HomeView(),
    const HomeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 10),
            Image.asset(
              'assets/logo/quickmart_second.png',
            )
          ],
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
          Align(
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(8)
                  // image: DecorationImage(image: image)
                  ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 16,
        currentIndex: widget.selectedTab ?? _index,
        onTap: (i) {
          setState(() {
            _index = i;
          });
        },
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: IndexedStack(index: _index, children: _buildBody),
      ),
    );
  }
}
