// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itet_app/views/utils/colors.dart';

import '../../constants.dart';
import '../widgets/main_dashboard.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/home-page';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: primaryColor,
      body: Stack(
        // alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SvgPicture.asset('assets/images/Frame.svg'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 57),
              // CircleAvatar(
              //   radius: 44,
              //   backgroundColor: Colors.amber,
              // ),
              // Profile Information
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ListTile(
                  visualDensity: VisualDensity(vertical: 4.0),
                  contentPadding: EdgeInsets.zero,
                  horizontalTitleGap: 0,
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color.fromRGBO(217, 217, 217, 1),
                        width: 2,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 44,
                      backgroundColor: Colors.amber,
                    ),
                  ),
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Hello,',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            // color: Colors.white,
                            // letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      // const SizedBox(height: 5),
                      Text(
                        'Tanzil Hasan',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: primaryColor,
                            // letterSpacing: 1.2,
                          ),
                        ),
                      ),
                      // const SizedBox(height: 4),
                      Text(
                        'Life Member, ITET',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: Color.fromRGBO(185, 185, 185, 1),
                            // letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 16),
                    child: SvgPicture.asset(
                      'assets/icons/notification.svg',
                      color: Color(0xff292D32),
                      width: 28,
                      height: 28,
                    ),
                  ),
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: Icon(
                  //     CupertinoIcons.bell,
                  //     color: primaryColor,
                  //     size: 34,
                  //   ),
                  // ),
                ),
              ),
              const SizedBox(height: 17),
              // Divider
              Padding(
                padding: const EdgeInsets.only(left: 38.0, right: 30),
                child: Divider(
                  color: primaryColor,
                  thickness: 1.5,
                ),
              ),
              const SizedBox(height: 45),
              // Dashboard
              MainDashboard(),
              const SizedBox(height: 35),
              // Ads Screen
              Container(
                height: 106,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffF7EFE5),
                ),
              ),
              const SizedBox(height: 45),
            ],
          ),
        ],
      ),
    );
  }
}

// SvgPicture.asset(
// 'assets/icons/notification.svg',
// width: 15,
// height: 15,
// ),
