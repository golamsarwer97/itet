// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import './main_page.dart';
import '../../views/utils/colors.dart';
import '../../constants.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash-page';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final String orgName = 'ITET BANGLADESH';
  final String estd = 'ESTD-1983';
  final String logo = 'assets/images/image1.png';

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.pushReplacementNamed(
        context,
        MainScreen.routeName,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SvgPicture.asset(AssetsConstants.backgroundImage),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              AspectRatio(
                aspectRatio: 1.6,
                child: Image.asset(
                  logo,
                  // height: MediaQuery.of(context).size.height * 0.29,
                  // width: MediaQuery.of(context).size.width * 0.55,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 26),
              Text(
                orgName,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                estd,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white,
                    // letterSpacing: 1.2,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Container(
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height,
// // decoration: BoxDecoration(
// //   image: DecorationImage(
// //     image: SvgPicture.asset(AssetsConstants.backgroundImage)
// //         as ImageProvider,
// //     fit: BoxFit.cover,
// //   ),
// // ),
// child: Center(
// child: Container(
// height: 100,
// width: 265,
// child: SvgPicture.asset(
// AssetsConstants.itetLogo,
// fit: BoxFit.cover,
// ),
// ),
// ),
// ),
