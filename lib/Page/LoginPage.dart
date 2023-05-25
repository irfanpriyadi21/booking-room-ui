import 'package:booking_room/Page/Dashboard/home_page.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';

import 'index.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/test3.jpg'))),
        child: GlassmorphicContainer(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 350,
          borderRadius: 20,
          linearGradient: LinearGradient(
              colors: [
                Colors.white10,
                Colors.white10]),
          border: 1,
          blur: 10,
          borderGradient: LinearGradient(
              colors: [Colors.white10, Colors.white30]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    'Smart Office',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white.withOpacity(.9),
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ),
                ),
                TextField(
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.white, fontSize: 15)
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      hintText: 'Enter username',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white70, fontSize: 14)
                      ),
                      prefixIconConstraints:
                      BoxConstraints(maxHeight: 10),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.person,
                          color: Colors.white70,
                          size: 20,
                        ),
                      ),
                      contentPadding:
                      EdgeInsets.only(top: 14, right: 10),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white, width: .2)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white, width: .2))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.white, fontSize: 14)
                  ),
                  cursorColor: Colors.white,
                  obscureText: showPassword ? false : true,
                  decoration: InputDecoration(
                      hintText: 'Enter password',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white70, fontSize: 14)
                      ),
                      contentPadding:
                      EdgeInsets.only(top: 14, right: 10),
                      prefixIconConstraints:
                      BoxConstraints(maxHeight: 10),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.lock,
                          color: Colors.white70,
                          size: 19,
                        ),
                      ),
                      suffixIconConstraints:
                      BoxConstraints(maxHeight: 10),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.white70,
                            size: 20,
                          ),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white, width: .2)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white, width: .2))),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot password?',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white.withOpacity(.8),
                            fontSize: 13)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Index(0)),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(colors: [
                          Colors.white12,
                          Colors.white10
                        ])),
                    child: Text(
                      'Login',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white.withOpacity(.8),
                            fontSize: 13,
                            fontWeight: FontWeight.w500)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(colors: [
                          Colors.white12,
                          Colors.white10
                        ])),
                    child: Text(
                      'Register',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500)
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
