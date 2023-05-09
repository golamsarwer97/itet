// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../utils/colors.dart';
import '../widgets/custom_text_field.dart';
import 'main_page.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({Key? key}) : super(key: key);
  static const routeName = '/contact-itet';

  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _message = TextEditingController();

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
      body: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        child: Column(
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
            const SizedBox(height: 20),
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
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 38.0, right: 38.0),
              child: Column(
                children: [
                  CustomTextField(
                    controller: _firstName,
                    labelText: 'First Name',
                    enabled: true,
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    controller: _lastName,
                    labelText: 'Last Name',
                    enabled: true,
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    controller: _phoneNumber,
                    labelText: 'Phone Number',
                    enabled: true,
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    controller: _email,
                    labelText: 'Email',
                    enabled: true,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    controller: _message,
                    labelText: 'Write your message..',
                    enabled: true,
                    keyboardType: TextInputType.text,
                    maxLines: 4,
                  ),
                  const SizedBox(height: 25),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff31C2A8),
                      ),
                      child: Center(
                        child: Text(
                          'Send Message',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.white,
                              // wordSpacing: 8,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
