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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          Container(
            height: 138,
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
        ]),
        const Spacer(),
        colors.isNotEmpty
            ? Row(
                children: [
                  Row(
                    children: colors
                        .map(
                          (color) => CircleAvatar(
                            backgroundColor: color,
                            radius: 15,
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(width: 5),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'All ${colors.length} Colors',
                      style: const TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  )
                ],
              )
            : const SizedBox.shrink(),
        Text(
          name,
          style: const TextStyle(
            fontSize: 14,
            color: COLORS.black,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          price,
          style: const TextStyle(
            fontSize: 12,
            color: COLORS.black,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          price,
          style: const TextStyle(
            fontSize: 10,
            color: COLORS.grey100,
          ),
        ),
      ],
    );
  }
}
