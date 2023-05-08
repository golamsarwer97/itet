// ignore_for_file: must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../models/dashboard_item.dart';

class MainDashboard extends StatelessWidget {
  MainDashboard({Key? key}) : super(key: key);
  var items = [
    DashboardItem(
      title: "Directory",
      image: AssetsConstants.directorIcon,
      color: 0xffB27210,
    ),
    DashboardItem(
      title: "Facilities",
      image: AssetsConstants.facilitiesIcon,
      color: 0xff8D589E,
    ),
    DashboardItem(
      title: "Messages",
      image: AssetsConstants.messagesIcon,
      color: 0xff3C95D1,
    ),
    DashboardItem(
      title: "ITET History",
      image: AssetsConstants.historyIcon,
      color: 0xffE84B3C,
    ),
    DashboardItem(
      title: "Executive Committee",
      image: AssetsConstants.executivesIcon,
      color: 0xff4D6780,
    ),
    DashboardItem(
      title: "Celebrations",
      image: AssetsConstants.celebrationIcon,
      color: 0xffFA5468,
    ),
    DashboardItem(
      title: "Events",
      image: AssetsConstants.eventIcon,
      color: 0xffF3C50F,
    ),
    DashboardItem(
      title: "Contact ITET",
      image: AssetsConstants.contactsIcon,
      color: 0xff31C2A8,
    ),
    DashboardItem(
      title: "Payments",
      image: AssetsConstants.paymentIcon,
      color: 0xff51AC1B,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        // color: Colors.cyan,
        height: MediaQuery.of(context).size.height * 0.45,
        child: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 1.0,
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: items.map((item) {
              return Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(item.color),
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        item.image,
                        // width: 27,
                        // height: 27,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    item.title,
                    softWrap: true,
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        // color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              );
            }).toList()),
      ),
    );
  }
}
