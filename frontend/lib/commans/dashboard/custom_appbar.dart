import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback handlestate;
  const CustomAppBar({Key? key, required this.handlestate}) : super(key: key);

  final double appbarIconsPadding = 15;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appbarColor,
      elevation: 0,
      title: const Text('Learning Management System'),
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
        ),
      ],
      leading: GestureDetector(
        onTap: handlestate
        // value.handleMenuState();
        ,
        child: const Icon(Icons.menu),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
