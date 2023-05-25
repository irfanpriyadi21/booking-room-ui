import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FoodListItemComponent extends StatelessWidget {
  final int? index;
  const FoodListItemComponent({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://picsum.photos/300/500?random=$index",
              ),
              fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(35)
          ),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF000000),
                Color(0x00000000),
                Color(0x00000000),
              ],
            )
          ),
          padding: EdgeInsets.only(left: 25,top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ruangan Anggrek",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ),
              SizedBox(height: 5),
              Row(
                children: [
                 Expanded(
                   child:  Row(
                     children: [
                       Text(
                           "5 - 10",
                           style: GoogleFonts.poppins(
                             textStyle: TextStyle(
                               color: Colors.white,
                               fontSize: 12,
                               fontWeight: FontWeight.bold,
                               height: 1.6,
                             ),
                           )
                       ),
                       SizedBox(width: 5),
                       Icon(
                         CupertinoIcons.person_alt,
                         color: Colors.white,
                         size: 15,
                       ),
                     ],
                   ),
                 ),
                 Expanded(
                   child:  Row(
                     children: [
                       Text(
                           "4.5",
                           style: GoogleFonts.poppins(
                             textStyle: TextStyle(
                               color: Colors.white,
                               fontSize: 12,
                               fontWeight: FontWeight.bold,
                               height: 1.6,
                             ),
                           )
                       ),
                       SizedBox(width: 5),
                       Icon(
                         CupertinoIcons.star_fill,
                         color: Colors.white,
                         size: 15,
                       ),
                     ],
                   ),
                 )
                ],
              ),


            ],
          ),
        )
      ],
    );
  }
}
