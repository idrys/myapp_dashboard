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
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding * 2,
            ),
            child: const Column(
              children: [
                Row(
                  children: [
                    ContainerRing(),
                    SizedBox(width: defaultPadding),
                    ContainerRing(),
                    SizedBox(width: defaultPadding),
                    ContainerRing(),
                    SizedBox(width: defaultPadding),
                    ContainerRing(),
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

class ContainerRing extends StatelessWidget {
  const ContainerRing({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
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
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Bez tej linijki napis jest przesunięty w prawo !!
              children: [
                Text(
                  'yoga',
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '40',
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '/60',
                            style: GoogleFonts.ubuntu(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: ' minutes',
                            style: GoogleFonts.ubuntu(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
