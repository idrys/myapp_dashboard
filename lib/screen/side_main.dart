import 'package:dashboard_workout/constants.dart';
import 'package:dashboard_workout/models/main_side.dart';
import 'package:dashboard_workout/models/main_side_setting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dashboard_workout/screen/list_title1.dart';
import 'package:dashboard_workout/screen/list_title2.dart';

class SideMain extends StatefulWidget {
  const SideMain({super.key});

  @override
  State<SideMain> createState() => _SideMainState();
}

class _SideMainState extends State<SideMain> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      // Cień bocznego menu
      child: Container(
        decoration: const BoxDecoration(
          color: primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black87,
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              child: Text(
                'Workout Go',
                style: GoogleFonts.ubuntu(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: defaultPadding * 2),
            SizedBox(
              height: 250,
              child: ListView.builder(
                  itemCount: demoMainSide.length,
                  itemBuilder: (context, index) {
                    //return ListTitle1(index, demoMainSide[index]);
                    return ListTitle1(
                        index: index, mainSide: demoMainSide[index]);
                  }),
            ),
            const SizedBox(height: defaultPadding * 2),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemCount: demoMainSideSetting.length,
                  itemBuilder: (context, index) {
                    return ListTitle2(
                        index: index,
                        mainSideSetting: demoMainSideSetting[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
