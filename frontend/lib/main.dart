import 'package:flutter/material.dart';
import 'package:lms/controllers/dashboard/dashboard_controller.dart';
import 'package:lms/controllers/homePage/homepage_controller.dart';
import 'package:provider/provider.dart';

import 'views/homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomePageController()),
        ChangeNotifierProvider(create: (_) => DashboardController())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lms',
        theme: ThemeData(
            //primarySwatch: Colors.white10,
            ),
        home: const HomePage(),
      ),
    );
  }
}
