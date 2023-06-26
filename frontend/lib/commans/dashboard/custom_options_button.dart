import 'package:flutter/material.dart';

class CustomOptionsButton extends StatelessWidget {
  final String text;
  const CustomOptionsButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(color: Colors.white12, border: Border.all()),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: Center(child: Text(text)),
    );
  }
}
