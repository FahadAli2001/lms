import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lms/commans/home/custom_login_box.dart';
import 'package:lms/consts/app_paddings.dart';
import 'package:lms/controllers/homePage/homepage_controller.dart';
import 'package:lms/views/dashboard/dashboard.dart';
import 'package:provider/provider.dart';

import '../../commans/home/custom_login_text.dart';
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

    return Scaffold(
      body: Consumer<HomePageController>(
        builder: (context, value, child) {
          return Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(homeBackgroundImage),
                      fit: BoxFit.fill)),
              child: Stack(
                children: [
                  Positioned(
                    top: 100,
                    left: 100,
                    child: Container(
                      width: width * 0.35,
                      //height: height * 0.7,
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
                                  color: Colors.blueGrey,
                                  fontSize: height * 0.04),
                            ),
                            CustomLoginText(
                              heading: 'Login as student',
                              index: value.index,
                              ontap: () {
                                value.handleLoginContainerState(1);
                              },
                              textIndex: 1,
                            ),
                            (value.index == 1)
                                ? CustomLoginBox(
                                    ontap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Dashboard()));
                                    },
                                    butnText: 'Login as student')
                                : Container(),
                            CustomLoginText(
                              heading: 'Login as Faculty',
                              index: value.index,
                              ontap: () {
                                value.handleLoginContainerState(2);
                              },
                              textIndex: 2,
                            ),
                            (value.index == 2)
                                ? CustomLoginBox(
                                    ontap: () {}, butnText: 'Login as faculty')
                                : Container(),
                            CustomLoginText(
                              heading: 'Login as Parents',
                              index: value.index,
                              ontap: () {
                                value.handleLoginContainerState(3);
                              },
                              textIndex: 3,
                            ),
                            (value.index == 3)
                                ? CustomLoginBox(
                                    ontap: () {}, butnText: 'Login as parents')
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ));
        },
      ),
    );
  }
}
