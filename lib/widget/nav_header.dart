import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NavHeader extends StatelessWidget {
  const NavHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Hexcolor('#ff6c70'),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Christine Turner",
            style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
          Text(
            "Fashion Designer",
            style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.save,
                color: Colors.white,
              ),
              SizedBox(
                width: 30,
                height: 40,
              ),
              Icon(
                Icons.apps,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
