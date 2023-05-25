import 'package:booking_room/Component/tabbar_item_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TabbarComponent extends StatelessWidget {
  final itemList = [
    {
      "label" : "Tersedia",
      "icon" : CupertinoIcons.house,
      "active" : true
    },
    {
      "label" : "Custom Room",
      "icon" : CupertinoIcons.building_2_fill,
      "active" : false
    },
    {
      "label" : "Meeting",
      "icon" : CupertinoIcons.briefcase,
      "active" : false
    },
    {
      "label" : "Hotel",
      "icon" : CupertinoIcons.building_2_fill ,
      "active" : false
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 50,
      child: ListView(
        shrinkWrap: true,
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: itemList
            .map((tabItem) => GestureDetector(
          child: GestureDetector(
            onTap: (){
              tabItem['active']!;
            },
            child: TabbarItemComponent(
                tabItem
            ),
          ),
        ))
            .toList(),
      ),
    );
  }
}
