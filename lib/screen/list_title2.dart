import 'package:dashboard_workout/models/main_side_setting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dashboard_workout/constants.dart';

class ListTitle2 extends StatefulWidget {
  const ListTitle2(
      {super.key, required this.index, required this.mainSideSetting});

  final int index;
  final MainSideSetting mainSideSetting;

  @override
  State<ListTitle2> createState() => _ListTitle2State();
}

class _ListTitle2State extends State<ListTitle2> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _selectIndex == widget.index + 5
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
            _selectIndex = widget.mainSideSetting.index;
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
              widget.mainSideSetting.icon,
              color: _selectIndex == widget.index + 5
                  ? Colors.black
                  : Colors.white,
            ),
          ),
        ),
        title: Text(
          widget.mainSideSetting.title,
          style: GoogleFonts.ubuntu(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color:
                _selectIndex == widget.index + 5 ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
