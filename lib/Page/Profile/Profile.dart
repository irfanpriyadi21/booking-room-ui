import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../../Component/selectionProfile.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "Profile",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, left: 20, top: 30),
              child: Column(
                children: [
                  Container(
                      padding:EdgeInsets.only(top: 30, bottom: 30, right: 15, left: 15),
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
                            children: [
                              CircleAvatar(
                                radius: 30.0,
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
                                      'Irfan Priyadi Nurfauzi',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12)
                                      ),
                                    ),
                                    Text(
                                      'irfan@gmail.com',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10)
                                      ),
                                    ),
                                    Text(
                                      '085694118211',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10)
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: 30),
                  SelectionProfile(
                      icon: const Icon(
                        Ionicons.person,
                        size: 18,
                        color: Colors.grey,
                      ),
                      text: 'Edit Profile',
                      logic: (){}
                  ),
                  SizedBox(height: 10),
                  SelectionProfile(
                      icon: const Icon(
                        Ionicons.lock_closed,
                        size: 18,
                        color: Colors.grey,
                      ),
                      text: 'Change Password',
                      logic: (){}
                  ),
                  SizedBox(height: 10),
                  SelectionProfile(
                      icon: const Icon(
                        Ionicons.accessibility,
                        size: 18,
                        color: Colors.grey,
                      ),
                      text: 'Privacy Policy',
                      logic: (){}
                  ),
                  SizedBox(height: 70),
                  Container(
                    height: 65,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.red[100]
                              ),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  )
                              )
                          ),
                          onPressed: () {

                          },
                          child: Text(
                            "Logout",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                textStyle: TextStyle(fontSize: 14.0, color: Colors.red)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
