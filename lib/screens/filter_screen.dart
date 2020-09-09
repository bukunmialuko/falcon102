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
//          ProductForSection(
//            selectedProductFor: mProductFor,
//            selectProductFor: funSelectProductFor,
//          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom:
                        BorderSide(width: 0.5, color: Colors.grey.shade400))),
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "BRANDS",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600),
                ),
                SizedBox(
                  height: 12,
                ),
                Wrap(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(4),
                      color: Colors.grey.shade300,
                      child: Wrap(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          Text(
                            'Continue',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          Icon(
                            Icons.close,
                            color: Colors.grey,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]));
  }
}
