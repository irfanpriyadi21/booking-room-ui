import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class QrData extends StatefulWidget {
  const QrData({Key? key}) : super(key: key);

  @override
  State<QrData> createState() => _QrDataState();
}

class _QrDataState extends State<QrData> {
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
                padding: EdgeInsets.only(top: 50, bottom: 20),
                child: Text(
                    "Scan QR",
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

          ],
        ),
      ),
    );
  }
}
