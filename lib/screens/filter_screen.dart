import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String selectedProductFor = "Both";

  void selectProductFor(String productFor) {
    setState(() {
      selectedProductFor = productFor;
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
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(width: 0.5, color: Colors.grey.shade400))),
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "PRODUCTS FOR",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        selectProductFor("Men");
                      },
                      child: Row(
                        children: <Widget>[
                          (selectedProductFor == "Men")
                              ? Icon(
                                  Icons.mail,
                                  color: Colors.red.shade400,
                                )
                              : Icon(
                                  Icons.mail,
                                  color: Colors.grey,
                                ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Men",
                            style: TextStyle(
                                color: (selectedProductFor == "Men")
                                    ? Colors.red.shade400
                                    : Colors.grey),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        selectProductFor("Women");
                      },
                      child: Row(
                        children: <Widget>[
                          (selectedProductFor == "Women")
                              ? Icon(
                                  Icons.mail,
                                  color: Colors.red.shade400,
                                )
                              : Icon(
                                  Icons.mail,
                                  color: Colors.grey,
                                ),
                          SizedBox(
                            width: 12,
                          ),
                          Text("Women",
                              style: TextStyle(
                                  color: (selectedProductFor == "Women")
                                      ? Colors.red.shade400
                                      : Colors.grey))
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        selectProductFor("Both");
                      },
                      child: Row(
                        children: <Widget>[
                          (selectedProductFor == "Both")
                              ? Icon(
                                  Icons.mail,
                                  color: Colors.red.shade400,
                                )
                              : Icon(
                                  Icons.mail,
                                  color: Colors.grey,
                                ),
                          SizedBox(
                            width: 12,
                          ),
                          Text("Both",
                              style: TextStyle(
                                  color: (selectedProductFor == "Both")
                                      ? Colors.red.shade400
                                      : Colors.grey))
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
