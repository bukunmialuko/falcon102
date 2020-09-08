import 'package:falcon102/widget/product_for_section.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String mProductFor = "Both";

  void funSelectProductFor(String productFor) {
    setState(() {
      mProductFor = productFor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
          title: Text("Filters"),
          backgroundColor: Hexcolor('#ff6c70'),
          actions: <Widget>[
            IconButton(
                icon: Icon(
              Icons.check,
              color: Colors.white,
            ))
          ],
        ),
        body: Column(children: <Widget>[
          ProductForSection(
            selectedProductFor: mProductFor,
            selectProductFor: funSelectProductFor,
          )
        ]));
  }
}
