import 'package:flutter/material.dart';

class CustomLoginText extends StatelessWidget {
  final int index;
  final int textIndex;
  final String heading;
  final VoidCallback ontap;
  const CustomLoginText(
      {super.key,
      required this.index,
      required this.textIndex,
      required this.ontap,
      required this.heading});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Align(
        alignment: Alignment.centerLeft,
        child: GestureDetector(
          onTap: () {
            ontap();
          },
          child: Text(
            heading,
            style: TextStyle(
              fontSize: height * 0.03,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              decoration: index == textIndex
                  ? TextDecoration.underline
                  : TextDecoration.none,
              decorationColor: Colors.grey,
              decorationThickness: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
