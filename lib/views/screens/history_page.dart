// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itet_app/views/screens/main_page.dart';
import 'package:itet_app/views/utils/colors.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);
  static const routeName = '/itet-history';

  final String logo = 'assets/images/image1.png';

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
          'ITET History',
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
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 26),
          AspectRatio(
            aspectRatio: 2,
            child: Image.asset(
              logo,
              // height: MediaQuery.of(context).size.height * 0.29,
              // width: MediaQuery.of(context).size.width * 0.55,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                text:
                    'The Institution of Textile Engineers and Technologists, simply known as ITET, is a Bangladeshi professional organization of technical personnel with institutional qualifications in textiles education. It is the oldest and most influential of its kind in the country. It works as an umbrella for all textile engineers and technicians actively working in the textile industry of Bangladesh.',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Color.fromRGBO(166, 166, 166, 1),
                    // wordSpacing: 8,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                text:
                    "The organization has its headquarters at Uttara sector in Dhaka City. It holds strong affiliation with the Textile Engineering Division of IEB. Department of Textiles of the government of the People's Republic of Bangladesh frequently takes advise and suggestions of this professionals' association to its consideration for the continuous growth of the industry. As of 18 June 2017, it has its 14th Executive Committee operating within its 14th Council, the highest board of directors, responsible for the regulation of the institution.",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Color.fromRGBO(166, 166, 166, 1),
                    // wordSpacing: 8,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
