import 'package:dashboard_workout/constants.dart';
import 'package:dashboard_workout/screen/side_main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        const Expanded(
          child: SideMain(),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 4,
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 160,
                      width: 250,
                      decoration: const BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'yoga',
                                style: GoogleFonts.ubuntu(
                                  color: Colors.white, 
                                  fontSize: 14, fontWeight: 
                                  FontWeight.w600,
                                  ),
                              ),
                              const SizedBox(
                                height: 10, 
                              ),
                            ],
                          )
                        ],
                      ),
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
