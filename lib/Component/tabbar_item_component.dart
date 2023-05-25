import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TabbarItemComponent extends StatelessWidget {
  final Map<String, dynamic>item;
  const TabbarItemComponent(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10,left: 10),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: item['active']
            ? Colors.blueAccent
            : Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF000000).withOpacity(0.05),
            blurRadius: 30,
            offset: Offset(1, 0)
          )
        ]
      ),
      child: Row(
        children: [
          Icon(
              item['icon'],
            size: 20,
            color: item['active']
            ? Colors.white
            : Colors.black,
          ),
          SizedBox(width: 10),
          Text(
              item['label'],
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 10,
                color: item['active']
                    ? Colors.white
                    : Colors.black,
              )
            ),
          )
        ],
      ),
    );
  }
}
