import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/styles/colors.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String? image;
  final String? discount;
  final List<Color> colors;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.colors,
    this.image,
    this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
          bottom: Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                decoration: BoxDecoration(
                  color: image != null ? COLORS.black : null,
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(image ?? ''),
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 5,
                child: GestureDetector(
                  child: const CircleAvatar(
                    radius: 15,
                    backgroundColor: COLORS.black,
                    child: Icon(
                      Icons.heart_broken,
                      size: 15,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          Text(
            name,
            style: const TextStyle(
              fontSize: 14,
              color: COLORS.black,
            ),
          ),
          if (discount != null) ...[
            const SizedBox(height: 15),
            Text(
              discount ?? '',
              style: const TextStyle(
                fontSize: 12,
                decoration: TextDecoration.lineThrough,
                color: COLORS.grey150,
              ),
            ),
          ],
          const SizedBox(height: 5),
          Text(
            price,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: COLORS.black,
            ),
          ),
        ],
      ),
    );
  }
}
