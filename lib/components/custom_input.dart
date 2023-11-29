import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/styles/colors.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final TextInputType type;
  final String title;
  final bool isRequired;
  final bool? isSecure;
  final String? placeholder;

  const CustomInput({
    super.key,
    required this.textEditingController,
    required this.type,
    required this.title,
    required this.isRequired,
    this.isSecure,
    this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: '$title ',
            style: const TextStyle(color: COLORS.black),
            children: isRequired
                ? [
                    const TextSpan(
                      text: '*',
                      style: TextStyle(color: COLORS.red),
                    ),
                  ]
                : [],
          ),
        ),
        const SizedBox(height: 7),
        TextField(
          controller: textEditingController,
          keyboardType: type,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          obscureText: isSecure ?? false,
          cursorColor: COLORS.grey150,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(16),
            hintText: placeholder,
            hintStyle: const TextStyle(fontSize: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: COLORS.grey100),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: COLORS.cyan),
            ),
            suffixIcon: isSecure == null
                ? null
                : isSecure!
                    ? const Icon(Icons.visibility_off_outlined)
                    : const Icon(Icons.visibility_outlined),
          ),
        )
      ],
    );
  }
}
