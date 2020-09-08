import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: Text("Feed"),
        backgroundColor: Hexcolor('#ff6c70'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
            Icons.inbox,
            color: Colors.white,
          ))
        ],
      ),
    );
  }
}
