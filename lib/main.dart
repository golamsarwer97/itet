// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:itet_app/views/screens/history_page.dart';
import 'package:itet_app/views/screens/main_page.dart';

import './views/screens/splash_page.dart';
import './views/screens/home_page.dart';
import './views/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ITET',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: mobileBackGroundColor,
      ),
      // home: SplashScreen(),
      home: HistoryScreen(),
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        MainScreen.routeName: (context) => MainScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        HistoryScreen.routeName: (context) => HistoryScreen(),
      },
    );
  }
}
