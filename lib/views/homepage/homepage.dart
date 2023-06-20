import 'package:flutter/material.dart';
import 'package:lms/consts/app_paddings.dart';
import 'package:lms/controllers/homePage/homepage_controller.dart';
import 'package:provider/provider.dart';

import '../../commans/home/custom_login_box.dart';
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
                                  color: Colors.blueGrey,
                                  fontSize: height * 0.04),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: GestureDetector(
                                  onTap: () {
                                    value.handleLoginContainerState();
                                  },
                                  child: Text(
                                    'LOGIN AS STUDENT',
                                    style: TextStyle(
                                      fontSize: height * 0.03,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      decoration: value.underlined == true
                                          ? TextDecoration.underline
                                          : TextDecoration.none,
                                      decorationColor: Colors.grey,
                                      decorationThickness: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            (value.underlined == true)
                                ? const CustomLoginBox(
                                    butnText: 'Login as student',
                                  )
                                : Container()
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
