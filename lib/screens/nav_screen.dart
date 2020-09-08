import 'package:falcon102/widget/nav_header.dart';
import 'package:falcon102/widget/nav_item.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            NavHeader(),
            NavItem(),
            NavItem(),
            NavItem(),
            NavItem(),
            NavItem(),
            NavItem(),
            NavItem(),
            NavItem(),
            NavItem(),
            NavItem(),
            NavItem(),
            NavItem(),
            NavItem(),
            NavItem(),
          ],
        ),
      ),
    );
  }
}

