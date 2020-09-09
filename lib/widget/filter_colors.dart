import 'package:flutter/material.dart';

class FilterColors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(width: 0.5, color: Colors.grey.shade400))),
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "COLORS",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600),
              ),
              Text(
                "RESET",
                style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(4),
                margin: EdgeInsets.only(right: 16),
                height: 32,
                decoration:
                    BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                margin: EdgeInsets.only(right: 16),
                height: 32,
                decoration:
                    BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
