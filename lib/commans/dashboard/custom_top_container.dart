import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTopContainer extends StatefulWidget {
  const CustomTopContainer({super.key});

  @override
  State<CustomTopContainer> createState() => _CustomTopContainerState();
}

class _CustomTopContainerState extends State<CustomTopContainer> {
  double appbarIconsPadding = 15;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      height: size.height * 0.2,
      width: size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: appbarIconsPadding, vertical: appbarIconsPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.person,
              color: Colors.grey,
              size: size.height * 0.15,
            ),
            Text(
              '12488 FAHAD ALI',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.height * 0.04,
                  color: Colors.blueGrey),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: appbarIconsPadding),
              child: const Icon(
                CupertinoIcons.cloud,
                color: Colors.grey,
              ),
            ),
            Text(
              'message',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.height * 0.02,
                  color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
