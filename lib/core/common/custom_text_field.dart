import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    required this.readOnly,
    this.suffixIcon,
    this.keyboardType,
    this.onTap,
    this.hintText,
    this.fontSize, this.onChanged,
  });

  final TextEditingController? controller;
  final bool readOnly;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final String? hintText;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.green,
      textAlign: TextAlign.center,
      autofocus: true,
      style: const TextStyle(color: Colors.white),
      controller: controller,
      keyboardType: keyboardType,
      readOnly: readOnly,
      onTap: onTap,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white, fontSize: fontSize),
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
