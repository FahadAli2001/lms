import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lms/commans/dashboard/custom_menu_column.dart';
import 'package:lms/controllers/dashboard/dashboard_controller.dart';
import 'package:provider/provider.dart';

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
            appBar: AppBar(
              elevation: 0,
              title: const Text('Learning Managment System'),
              actions: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: appbarIconsPadding),
                  child: const Icon(Icons.search),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: appbarIconsPadding),
                  child: const Icon(CupertinoIcons.bell),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: appbarIconsPadding),
                  child: const Icon(Icons.message),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: appbarIconsPadding),
                  child: const Icon(CupertinoIcons.person),
                )
              ],
              leading: GestureDetector(
                  onTap: () {
                    value.handleMenuState();
                  },
                  child: const Icon(Icons.menu)),
            ),
            body: Row(
              children: [
                CustomMenuColumn(
                    menuOpen: value.menuOpen, padding: appbarIconsPadding),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: appbarIconsPadding,
                        horizontal: appbarIconsPadding),
                    child: ListView(
                      children: [
                        Container(
                          color: Colors.white,
                          height: size.height * 0.2,
                          width: size.width,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: appbarIconsPadding,
                                vertical: appbarIconsPadding),
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
                                  padding: EdgeInsets.symmetric(
                                      horizontal: appbarIconsPadding),
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
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Container(
                            color: Colors.white,
                            width: size.width,
                            height: size.height,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ));
      },
    );
  }
}
