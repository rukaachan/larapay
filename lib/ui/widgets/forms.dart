import 'package:flutter/material.dart';
import 'package:larapay/shared/theme.dart';

class CustomFormField extends StatefulWidget {
  final String title;
  // Determines if the field should initially obscure text (like a password field)
  final bool obscureText;
  final TextEditingController? controller;

  const CustomFormField({
    super.key,
    required this.title,
    this.obscureText = false,
    this.controller,
  });

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  // State variable to track the current visibility state
  late bool _obscureText;

  @override
  void initState() {
    // Initialize the visibility state based on the widget's initial setting
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: blackTextStyle.copyWith(fontWeight: semiBold),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: widget.controller,
          obscureText:
              _obscureText, // Use state variable to control text visibility
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
            contentPadding: const EdgeInsets.all(12),
            // Add a suffix icon (eye) only if the field is meant to obscure text initially
            suffixIcon: widget.obscureText
                ? IconButton(
                    // Choose the icon based on the current visibility state
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    // Toggle the visibility state when the icon is pressed
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                : null, // Don't show the icon if obscureText is false
          ),
        )
      ],
    );
  }
}
