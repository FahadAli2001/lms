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
                      top: 150,
                      left: width * 0.1,
                      child: Container(
                        width: width * 0.3,
                        height: height * 0.65,
                        decoration: const BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 90),
                                child: Center(
                                  child: Text(
                                    'Login Instructions',
                                    style: TextStyle(
                                        fontSize: width * 0.02,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'For Students',
                                  style: TextStyle(
                                      fontSize: width * 0.015,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.2,
                                child: const Divider(
                                  thickness: 0.9,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'Username : your student no eg : 321',
                                  style: TextStyle(
                                      fontSize: width * 0.01,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),

                              //

                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'For Faculty',
                                  style: TextStyle(
                                      fontSize: width * 0.015,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.2,
                                child: const Divider(
                                  thickness: 0.9,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'Username : your employee no eg : 321',
                                  style: TextStyle(
                                      fontSize: width * 0.01,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              //
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.check_circle_outline,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        'cookies must be enabled in your browser',
                                        style: TextStyle(
                                            fontSize: width * 0.01,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.question_mark_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  Positioned(
                    top: 150,
                    left: width * 0.4,
                    child: Container(
                      width: width * 0.25,
                      height: height * 0.65,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPaddings.paddingHorizontal,
                            vertical: AppPaddings.paddingVertical),
                        child: Column(
                          children: [
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
                  Positioned(
                    top: height * 0.1,
                    left: width * 0.25,
                    child: Text(
                      "Learning Management System",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: height * 0.04),
                    ),
                  ),
                ],
              ));
        },
      ),
    );
  }
}
