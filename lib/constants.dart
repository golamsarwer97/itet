// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:itet_app/views/screens/home_page.dart';

class AssetsConstants {
  static const String _imagePath = 'assets/images';
  static const String itetLogo = '$_imagePath/itet_logo.svg';
  static const String backgroundImage = '$_imagePath/background.svg';
  static const String celebrationIcon = '$_imagePath/celebration.svg';
  static const String contactsIcon = '$_imagePath/contacts.svg';
  static const String directorIcon = '$_imagePath/director.svg';
  static const String eventIcon = '$_imagePath/event.svg';
  static const String executivesIcon = '$_imagePath/executives.svg';
  static const String facilitiesIcon = '$_imagePath/facilities.svg';
  static const String historyIcon = '$_imagePath/history.svg';
  static const String messagesIcon = '$_imagePath/messages.svg';
  static const String paymentIcon = '$_imagePath/payment.svg';

// static const String likeOutlinedIcon = '$_svgsPath/like_outlined.svg';
// static const String likeFilledIcon = '$_svgsPath/like_filled.svg';
// static const String viewsIcon = '$_svgsPath/views.svg';
// static const String verifiedIcon = '$_svgsPath/verified.svg';
}

final pages = [
  HomeScreen(),
  Center(child: Text('Message Screen')),
  Center(child: Text('Categories Screen')),
  Center(child: Text('Profile Screen')),
];
