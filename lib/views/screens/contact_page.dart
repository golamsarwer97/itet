import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../utils/colors.dart';
import 'main_page.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);
  static const routeName = '/contact-itet';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackGroundColor,
        elevation: 0,
        automaticallyImplyLeading: true,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.popUntil(
              context,
              ModalRoute.withName(MainScreen.routeName),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
        ),
        title: Text(
          'Contact ITET',
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 1.2,
              color: Colors.black,
              // letterSpacing: 1.2,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 15),
          Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Any question or remarks? \n Just write us a message!',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color.fromRGBO(113, 113, 113, 1),
                    // wordSpacing: 8,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              SvgPicture.asset(
                'assets/images/contact_card.svg',
                fit: BoxFit.contain,
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Contact Information',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                        // wordSpacing: 8,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  SvgPicture.asset(
                    'assets/images/phone_call.svg',
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '+88018XXXXXXX',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white,
                        // wordSpacing: 8,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  SvgPicture.asset(
                    'assets/images/sharp_email.svg',
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'demo@gmail.com',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white,
                        // wordSpacing: 8,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/facebook.svg',
                      ),
                      const SizedBox(width: 22),
                      SvgPicture.asset(
                        'assets/icons/twitter.svg',
                      ),
                      const SizedBox(width: 22),
                      SvgPicture.asset(
                        'assets/icons/instagram.svg',
                      ),
                      const SizedBox(width: 22),
                      SvgPicture.asset(
                        'assets/icons/linkedin.svg',
                      ),
                      const SizedBox(width: 22),
                      SvgPicture.asset(
                        'assets/icons/youtube.svg',
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
