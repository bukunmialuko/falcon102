
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NavHeader extends StatelessWidget {
  const NavHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height) * 0.4,
      color: Hexcolor('#ff6c70'),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                )
              ],
            ),
            CircleAvatar(
              radius: 40,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Christine Turner",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  decoration: TextDecoration.none),
            ),
            Text(
              "Fashion Designer",
              style: TextStyle(
                  fontSize: 12,
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
      ),
    );
  }
}
