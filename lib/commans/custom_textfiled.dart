import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String hintText;
  Icon icon;
  CustomTextField({super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: icon,
          border: const OutlineInputBorder()),
    );
  }
}
