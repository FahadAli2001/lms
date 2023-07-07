import 'package:flutter/material.dart';
import 'package:lms/commans/dashboard/custom_menu_column.dart';
import 'package:lms/controllers/dashboard/dashboard_controller.dart';
import 'package:provider/provider.dart';

import '../../commans/dashboard/custom_appbar.dart';
import '../../commans/dashboard/custom_top_box.dart';

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
                                      style: TextStyle(),
                                    ),
                                  )
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
