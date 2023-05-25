import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../Component/bottom_navbar.dart';
import '../../Component/food_list_component.dart';
import '../../Component/swipper_component.dart';
import '../../Component/tabbar_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // SwiperComponent(),
            Padding(
              padding: EdgeInsets.only(
                top: 40, left: 15
              ),
              child: Text(
                'Booking Room',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)
                ),
              ),
            ),
            Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              margin: EdgeInsets.only(top: 15, bottom: 20, right: 15, left: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 60,
                    spreadRadius: 4,
                    color: Color(0x1A000000),
                  ),
                ],
                // image: const DecorationImage(
                //     alignment: Alignment.centerRight,
                //     image: AssetImage('assets/images/illustration.png'),
                //     opacity: 0.03,
                //     fit: BoxFit.contain)
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage:
                              NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                              backgroundColor: Colors.transparent,
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Welcome,',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10)
                                    ),
                                  ),
                                  Text(
                                    'Irfan Priyadi Nurfauzi',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10)
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        '${DateFormat('EEEE, MMM d, yyyy').format(DateTime.now())}',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 10)
                        ),
                      ),

                    ],
                  )
                ],
              )
            ),
            TabbarComponent(),
            SizedBox(height: 25),
            FoodListComponent()
          ],
        ),
      ),
    );
  }
}
