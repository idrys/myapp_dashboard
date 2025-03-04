import 'package:flutter/material.dart';
import 'package:dashboard_workout/models/main_side.dart';
import 'package:dashboard_workout/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTitle1 extends StatefulWidget {
  const ListTitle1({
    super.key,
    required this.index,
    required this.mainSide,
    required this.selectedIndex,
    required this.onTap,
  });

  final int index;
  final MainSide mainSide;
  final int selectedIndex;
  final ValueChanged<int> onTap;

  @override
  State<ListTitle1> createState() => _ListTitle1State();
}

class _ListTitle1State extends State<ListTitle1> {
  
  @override
  Widget build(BuildContext context) {
    final bool isSelected = widget.selectedIndex == widget.index;

    return Container(
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xffcceddd) : Colors.transparent,
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
        onTap: () => widget.onTap(widget.index),
        leading: Padding(
          padding: const EdgeInsets.only(
            left: defaultPadding * 1.5,
          ),
          child: SizedBox(
            height: 30,
            width: 30,
            child: Icon(
              widget.mainSide.icon,
              color: isSelected ? Colors.black : Colors.white,
            ),
          ),
        ),
        title: Text(
          widget.mainSide.title,
          style: GoogleFonts.ubuntu(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
