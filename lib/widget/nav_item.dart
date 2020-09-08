import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final String title;
  final String selectedName;
  final IconData iconData;
  final int notificationCount;

  const NavItem({
    Key key,
    this.title = "Null",
    this.selectedName = "Null Name",
    this.iconData = Icons.title,
    this.notificationCount = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(
                iconData,
                color: title == selectedName ? Colors.red : Colors.grey,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    color: title == selectedName ? Colors.red : Colors.grey,
                    decoration: TextDecoration.none),
              ),
            ],
          ),
          notificationCount > 0
              ? Container(
                  color: Colors.red,
                  padding:
                      EdgeInsets.only(left: 4, right: 4, top: 2, bottom: 2),
                  child: Text(
                    notificationCount.toString(),
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
