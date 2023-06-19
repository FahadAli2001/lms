import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:lms/consts/app_paddings.dart';

import '../../consts/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    bool _underlined = false;
    return Scaffold(
      body: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(homeBackgroundImage), fit: BoxFit.fill)),
          child: Stack(
            children: [
              Positioned(
                top: 100,
                left: 100,
                child: Container(
                  width: width * 0.35,
                  height: height * 0.7,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPaddings.paddingHorizontal,
                        vertical: AppPaddings.paddingVertical),
                    child: Column(
                      children: [
                        Text(
                          "Learning Management System",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: height * 0.04),
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          onEnter: (event) {
                            log("enter");
                            setState(() {
                              _underlined =
                                  true; // Set _hovering to true when mouse enters
                            });
                          },
                          onExit: (event) {
                            log('exit');
                            setState(() {
                              _underlined =
                                  false; // Set _hovering to false when mouse exits
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 50),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'LOGIN AS Student',
                                style: TextStyle(
                                  fontSize: height * 0.03,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold,
                                  decorationColor: Colors.black,
                                  decorationThickness: 2.85,
                                  decoration: _underlined == true
                                      ? TextDecoration.underline
                                      : TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
