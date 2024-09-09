import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.readOnly,
    this.suffixIcon,
    this.keyboardType,
    this.onTap,
  });

  final TextEditingController controller;
  final bool readOnly;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.green,
      style: const TextStyle(
        color: Colors.white,
      ),
      controller: controller,
      keyboardType: keyboardType,
      readOnly: readOnly,
      onTap: onTap,
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
