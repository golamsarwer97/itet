// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:itet_app/views/utils/colors.dart';

import '../../constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const routeName = '/main-screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: primaryColor,
        unselectedItemColor: Color(0xffCACBCE),
        showSelectedLabels: false,
        onTap: (idx) {
          setState(() {
            pageIdx = idx;
          });
        },
        currentIndex: pageIdx,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: pageIdx == 0 ? primaryColor : Color(0xffCACBCE),
            ),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/message.svg',
              color: pageIdx == 1 ? primaryColor : Color(0xffCACBCE),
              // width: 15,
              // height: 15,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/category.svg',
              color: pageIdx == 2 ? primaryColor : Color(0xffCACBCE),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/profile.svg',
              color: pageIdx == 3 ? primaryColor : Color(0xffCACBCE),
            ),
            label: '',
          ),
        ],
      ),
      body: pages[pageIdx],
    );
  }
}
