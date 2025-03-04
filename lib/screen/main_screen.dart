import 'package:dashboard_workout/screen/side_main.dart';
import 'package:flutter/material.dart';


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
          const SideMain(),
        Expanded(
          flex: 1,
          child: Container(),
        ),
      ],
    ));
  }
}
