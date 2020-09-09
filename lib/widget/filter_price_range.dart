import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class FilterPriceRange extends StatelessWidget {
  final double lowerValue;
  final double upperValue;
  final Function onDragging;

  const FilterPriceRange(
      {Key key, this.lowerValue = 50, this.upperValue, this.onDragging})
      : super(key: key);

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
                "PRICE RANGE",
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
          Row(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(width: 0.5, color: Colors.grey.shade400)),
                  padding: EdgeInsets.all(4),
                  child: Text(lowerValue.toString())),
              Expanded(
                  child: FlutterSlider(
                values: [lowerValue, upperValue],
                rangeSlider: true,
                max: 500,
                min: 0,
                onDragging: (handlerIndex, lowerValue, upperValue) {
                  onDragging(handlerIndex, lowerValue, upperValue);
                },
              )),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(width: 0.5, color: Colors.grey.shade400)),
                  padding: EdgeInsets.all(4),
                  child: Text(upperValue.toString())),
            ],
          )
        ],
      ),
    );
  }
}
