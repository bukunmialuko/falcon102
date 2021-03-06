import 'package:falcon102/widget/nav_header.dart';
import 'package:falcon102/widget/nav_item.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  String selectedName = "Notifications";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Hexcolor('#ff6c70'),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
            Icons.settings,
            color: Colors.white,
          ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavHeader(),
              NavItem(
                title: "Feed",
                selectedName: selectedName,
                iconData: Icons.rss_feed,
              ),
              NavItem(
                title: "Events",
                selectedName: selectedName,
                iconData: Icons.event,
              ),
              NavItem(
                title: "Posts",
                selectedName: selectedName,
                iconData: Icons.camera_enhance,
              ),
              NavItem(
                title: "Notifications",
                selectedName: selectedName,
                notificationCount: 3,
                iconData: Icons.rss_feed,
              ),
              NavItem(
                title: "Account",
                selectedName: selectedName,
                iconData: Icons.account_circle,
              ),
              NavItem(
                title: "Logout",
                selectedName: selectedName,
                iconData: Icons.exit_to_app,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
