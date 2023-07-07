import 'package:flutter/material.dart';
import 'package:lms/commans/dashboard/custom_menu_column.dart';
import 'package:lms/controllers/dashboard/dashboard_controller.dart';
import 'package:provider/provider.dart';

import '../../commans/dashboard/custom_appbar.dart';
import '../../commans/dashboard/custom_info_view.dart';

import '../../commans/dashboard/custom_option_buttons_column.dart';
import '../../commans/dashboard/custom_table_view.dart';
import '../../commans/dashboard/custom_top_container.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  double appbarIconsPadding = 15;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<DashboardController>(
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: Colors.white70,
          appBar: CustomAppBar(
            handlestate: value.handleMenuState,
          ),
          body: Row(
            children: [
              CustomMenuColumn(
                menuOpen: value.menuOpen,
                padding: appbarIconsPadding,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: appbarIconsPadding,
                    horizontal: appbarIconsPadding,
                  ),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      const CustomTopContainer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          color: Colors.white,
                          width: size.width,
                          // height: size.height,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: appbarIconsPadding,
                              vertical: appbarIconsPadding,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Student Portal',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.height * 0.03,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                const CustomInfoView(),
                                const CustomTableView(),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'How To Attend Zoom Sessions',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey,
                                      fontSize: size.height * 0.04,
                                    ),
                                  ),
                                ),
                                const CustomOptionButtonsColumn(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
