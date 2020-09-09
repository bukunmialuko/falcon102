import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class FilterProductFor extends StatelessWidget {
  final String selectedProductFor;
  final Function selectProductFor;

  const FilterProductFor(
      {Key key, this.selectedProductFor, this.selectProductFor})
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
                            CommunityMaterialIcons.gender_male,
                            color: Colors.red.shade400,
                          )
                        : Icon(
                            CommunityMaterialIcons.gender_male,
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
                            CommunityMaterialIcons.gender_female,
                            color: Colors.red.shade400,
                          )
                        : Icon(
                            CommunityMaterialIcons.gender_female,
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
                            CommunityMaterialIcons.gender_non_binary,
                            color: Colors.red.shade400,
                          )
                        : Icon(
                            CommunityMaterialIcons.gender_male_female_variant,
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
    );
  }
}
