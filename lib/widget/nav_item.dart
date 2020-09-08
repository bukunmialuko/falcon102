
import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(Icons.card_giftcard, color: Colors.red,),
              SizedBox(width: 16,),
              Text(
                "Feed",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    decoration: TextDecoration.none),
              ),
            ],
          ),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(2),
            child: Text(
              "3",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  decoration: TextDecoration.none),
            ),
          )
        ],
      ),
    );
  }
}