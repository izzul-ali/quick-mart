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
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Container(
            height: 138,
            width: 160,
            decoration: BoxDecoration(
              color: image != null ? COLORS.grey150 : null,
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image: NetworkImage(image ?? ''),
              ),
            ),
          ),
          colors.isNotEmpty
              ? Row(
                  children: [
                    Row(
                      children: colors
                          .map(
                            (color) => CircleAvatar(
                              backgroundColor: color,
                            ),
                          )
                          .toList(),
                    ),
                    const SizedBox(width: 10),
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
        ],
      ),
    );
  }
}
