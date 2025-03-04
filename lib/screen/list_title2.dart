import 'package:dashboard_workout/models/main_side_setting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dashboard_workout/constants.dart';

class ListTitle2 extends StatefulWidget {
  const ListTitle2({
    super.key,
    required this.index,
    required this.mainSideSetting,
    required this.selectedIndex,
    required this.onTap,
  });

  final int index;
  final MainSideSetting mainSideSetting;
  final int selectedIndex;
  final ValueChanged<int> onTap;

  @override
  State<ListTitle2> createState() => _ListTitle2State();
}

class _ListTitle2State extends State<ListTitle2> {

  @override
  Widget build(BuildContext context) {
    final bool isSelected = widget.selectedIndex == widget.index+5;

    return Container(
      decoration: BoxDecoration(
        color: isSelected
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
        onTap: () => widget.onTap(widget.index+5),
        leading: Padding(
          padding: const EdgeInsets.only(
            left: defaultPadding * 1.5,
          ),
          child: SizedBox(
            height: 30,
            width: 30,
            child: Icon(
              widget.mainSideSetting.icon,
              color:
                  isSelected ? Colors.black : Colors.white,
            ),
          ),
        ),
        title: Text(
          widget.mainSideSetting.title,
          style: GoogleFonts.ubuntu(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color:
                isSelected ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
