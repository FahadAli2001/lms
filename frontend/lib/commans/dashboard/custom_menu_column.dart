import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lms/views/dashboard/dashboard.dart';

import '../../consts/app_colors.dart';

class CustomMenuColumn extends StatelessWidget {
  final bool menuOpen;
  final double padding;
  const CustomMenuColumn(
      {super.key, required this.menuOpen, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (menuOpen == true) ? 200 : 60,
      height: MediaQuery.of(context).size.height,
      color: appbarColor,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Dashboard()));
            },
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: padding, vertical: padding),
                  child: const Icon(
                    Icons.space_dashboard,
                    color: Colors.white,
                  ),
                ),
                (menuOpen == true)
                    ? const Text(
                        'Dashboard',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )
                    : const SizedBox()
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: padding, vertical: padding),
                child: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              (menuOpen == true)
                  ? const Text(
                      'Sitehome',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )
                  : const SizedBox()
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: padding, vertical: padding),
                child: const Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                ),
              ),
              (menuOpen == true)
                  ? const Text(
                      'Calendar',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )
                  : const SizedBox()
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: padding, vertical: padding),
                child: const Icon(
                  CupertinoIcons.book,
                  color: Colors.white,
                ),
              ),
              (menuOpen == true)
                  ? const Text(
                      'My Courses',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )
                  : const SizedBox()
            ],
          )
        ],
      ),
    );
  }
}
