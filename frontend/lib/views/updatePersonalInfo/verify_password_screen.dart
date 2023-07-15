import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lms/commans/custom_textfiled.dart';
import 'package:lms/commans/dashboard/custom_menu_column.dart';
import 'package:lms/controllers/dashboard/dashboard_controller.dart';
import 'package:lms/views/updatePersonalInfo/personal_info_screen.dart';
import 'package:provider/provider.dart';

import '../../commans/dashboard/custom_appbar.dart';
import '../../commans/dashboard/custom_top_box.dart';
import '../../consts/app_colors.dart';

class VerifyPasswordScreen extends StatefulWidget {
  const VerifyPasswordScreen({super.key});

  @override
  State<VerifyPasswordScreen> createState() => _VerifyPasswordScreenState();
}

class _VerifyPasswordScreenState extends State<VerifyPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<DashboardController>(
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: bgColor,
          appBar: CustomAppBar(
            handlestate: value.handleMenuState,
          ),
          body: Row(
            children: [
              CustomMenuColumn(menuOpen: value.menuOpen, padding: 15),
              Flexible(
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        CustomTopBox(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  color: Colors.blueGrey.shade100,
                                  child: const Text(
                                    'Dashboard',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Container(
                                    padding: const EdgeInsets.all(15),
                                    color: Colors.blueGrey.shade100,
                                    child: const Text(
                                      '[[ Personal Info ]]',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'For Security purpose ,please re-enter your password',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade700,
                                        fontSize: size.height * 0.03),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    child: Text(
                                      'Username               12488',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: size.height * 0.025),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Password',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: size.height * 0.025),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.06,
                                      ),
                                      SizedBox(
                                        width: 200,
                                        height: 30,
                                        child: CustomTextField(
                                            hintText: '',
                                            icon: const Icon(
                                              Icons.lock,
                                              color: Colors.white,
                                            )),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 8, left: size.height * 0.225),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const PersonalInfoScreen()));
                                      },
                                      child: Container(
                                        width: 200,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            border: Border.all(
                                                color: Colors.grey.shade700)),
                                        child: Center(
                                          child: Text(
                                            'Verify Password & Proceed',
                                            style: TextStyle(
                                                //fontWeight: FontWeight.bold,
                                                color: Colors.grey.shade700),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 8, left: size.height * 0.225),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 100,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            border: Border.all(
                                                color: Colors.grey.shade700)),
                                        child: Center(
                                          child: Text(
                                            'Cancel',
                                            style: TextStyle(
                                                //fontWeight: FontWeight.bold,
                                                color: Colors.grey.shade700),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        );
      },
    );
  }
}
