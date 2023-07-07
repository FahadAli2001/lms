import 'package:flutter/material.dart';

class CustomTopBox extends StatelessWidget {
  final Widget child;
  const CustomTopBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      height: size.height * 0.2,
      width: size.width,
      child: child,
    );
  }
}
