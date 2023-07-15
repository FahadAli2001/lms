import 'package:flutter/material.dart';
import 'package:lms/commans/dashboard/custom_appbar.dart';
import 'package:lms/commans/dashboard/custom_menu_column.dart';
import 'package:lms/commans/dashboard/custom_top_box.dart';
import 'package:lms/controllers/dashboard/dashboard_controller.dart';
import 'package:provider/provider.dart';

import '../../consts/app_colors.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<DashboardController>(
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: bgColor,
          appBar: CustomAppBar(handlestate: value.handleMenuState),
          body: Row(
            children: [
              CustomMenuColumn(menuOpen: value.menuOpen, padding: 15),
              Flexible(
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    child: ListView(scrollDirection: Axis.vertical, children: [
                      CustomTopBox(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                      )),
                      //
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          color: Colors.white,
                          width: size.width,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width * 0.2),
                                  child: Text(
                                    'PafKiet Student Personal \n \t\t\t\t\t\t\t Information',
                                    style: TextStyle(
                                        color: Colors.orange.shade400,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * 0.033),
                                  ),
                                ),
                                Text(
                                  ' Student No :\t\t\t\t\t\t\t\t\t\t\t12488',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.height * 0.02),
                                ),
                                Text(
                                  ' Student Name :\t\t\t\t\t\t\tFahad Ali Siddiqui',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.height * 0.02),
                                ),
                                Text(
                                  ' Father Name :\t\t\t\t\t\t\t\t\t\tRahat Ali Siddiqui',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.height * 0.02),
                                ),
                                Text(
                                  ' Guardian Name :\t\t\t\t\tRahat Ali Siddiqui',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.height * 0.02),
                                ),
                                Text(
                                  ' Gender :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tMale',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.height * 0.02),
                                ),
                                Text(
                                  ' Date Of Birth :\t\t\t\t\t\t\t\t\t\t03-Nov-2001',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.height * 0.02),
                                ),
                                Text(
                                  ' NIC No :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t123456789123456',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.height * 0.02),
                                ),
                                Text(
                                  ' Email :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tfahad@gmail.com',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.height * 0.02),
                                ),
                                Text(
                                  ' Mobile :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t03212358217',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.height * 0.02),
                                ),
                                Text(
                                  ' Residence :\t\t\t\t\t\t\t\t\t\t\t\t\t\tsindh,karachi',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.height * 0.02),
                                ),
                                Text(
                                  ' Phone Residence :\t\t\t\t03212358217',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.height * 0.02),
                                ),
                                Text(
                                  ' City :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tKarachi',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.height * 0.02),
                                ),
                                Text(
                                  ' Country :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tPakistan',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.height * 0.02),
                                ),
                                Text(
                                  'Student Office Information (if any)',
                                  style: TextStyle(
                                      color: Colors.orangeAccent,
                                      fontSize: size.height * 0.02),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ' Organization :',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: size.height * 0.02),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.1,
                                    ),
                                    Text(
                                      ' Salary :',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: size.height * 0.02),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ' Designation :',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: size.height * 0.02),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.1,
                                    ),
                                    Text(
                                      ' Office Fax :',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: size.height * 0.02),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
                  ))
            ],
          ),
        );
      },
    );
  }
}
