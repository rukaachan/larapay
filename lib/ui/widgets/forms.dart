import 'package:flutter/material.dart';
import 'package:larapay/shared/theme.dart';

class CustomFormField extends StatelessWidget {
  final String titlle;
  final bool obscureText;
  final TextEditingController? controller;

  const CustomFormField({
    super.key,
    required this.titlle,
    this.obscureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titlle,
          style: blackTextStyle.copyWith(fontWeight: semiBold),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: controller,
          obscureText: obscureText, // Hide Password
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
              contentPadding: const EdgeInsets.all(12)),
        )
      ],
    );
  }
}
