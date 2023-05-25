import 'dart:ui';

import 'package:booking_room/Page/Booking/Booking.dart';
import 'package:booking_room/Page/Profile/Profile.dart';
import 'package:booking_room/Page/Dashboard/home_page.dart';
import 'package:booking_room/Page/qr/qr_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Index extends StatefulWidget {
  final int index;
  const Index(this.index, {Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int activeIndex = 0;

  List<Widget> pages = [
    HomePage(),
    Booking(),
    QrData(),
    Profile(),
  ];

  set(){
    setState(() {
      activeIndex = widget.index;
      print(widget.index);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.index != null){
      set();
    }
  }

  void _updateIndex(int indexValue) {
    setState(() {
      activeIndex = indexValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey[200],
      body: pages.elementAt(activeIndex),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(right: 25,left: 25,bottom: 25),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.white.withOpacity(0.75),
              child: Padding(
                padding: EdgeInsets.only(right: 10,left: 10),
                child: Row(
                  children: [
                    _bottomAppBarItem(
                      index: 0,
                      icon: CupertinoIcons.home,
                    ),
                    _bottomAppBarItem(
                      index: 1,
                      icon: CupertinoIcons.calendar,
                    ),
                    _bottomAppBarItem(
                      index: 2,
                      icon: CupertinoIcons.qrcode,
                    ),
                    _bottomAppBarItem(
                      index: 3,
                      icon: CupertinoIcons.profile_circled,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _bottomAppBarItem({
    int? index,
    IconData? icon,
  }){
    return Expanded(
      child: ClipOval(
        child: RawMaterialButton(
          padding: EdgeInsets.only(top: 25, bottom: 15),
          onPressed: () => _updateIndex(index!),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 25,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 5,
                width: 5,
                decoration: index == activeIndex
                    ? BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(5),
                )
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
