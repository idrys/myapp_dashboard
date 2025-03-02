import 'package:dashboard_workout/constants.dart';
import 'package:dashboard_workout/models/main_side.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        SizedBox(
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
                        return listTitle1(index, demoMainSide[index]);
                      }),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
      ],
    ));
  }

  Container listTitle1(int index, MainSide mainSide) {
    return Container(
      decoration: BoxDecoration(
        color: _selectIndex == index
            ? const Color(0xffcceddd)
            : Colors.transparent,
        gradient: const LinearGradient(
          colors: [
            Color(0xff58d9d9),
            Color(0xff5747ef),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        //borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        hoverColor: const Color(0x00ffcced),
        onTap: () {
          setState(() {
            _selectIndex = mainSide.index;
          });
        },
        leading: Padding(
          padding: const EdgeInsets.only(
            left: defaultPadding * 1.5,
          ),
          child: SizedBox(
            height: 30,
            width: 30,
            child: Icon(
              mainSide.icon,
              color: _selectIndex == index ? Colors.black : Colors.white,
            ),
          ),
        ),
        title: Text(
          mainSide.title,
          style: GoogleFonts.ubuntu(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: _selectIndex == index ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
