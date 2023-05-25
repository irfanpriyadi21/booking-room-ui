import 'package:banner_carousel/banner_carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List<String> images = [
   'assets/images/black.jpg',
    'assets/images/example1.jpg',
    'assets/images/test2.jpg',
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [

                Container(
                  height: 300,
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    itemCount: images.length,
                    carouselController: _controller,
                    itemBuilder: (context, index, realIdx){
                      return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30)
                              ),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    images[index],
                                  )
                              )
                          )
                      );
                    },
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 1.0,
                      enlargeCenterPage: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 30,left: 20),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: images.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 12.0,
                            height: 12.0,
                            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:  Colors.white
                                    .withOpacity(_current == entry.key ? 0.9 : 0.5)),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(right: 15, left: 15, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "Ruangan Anggrek A1",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.orange,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 17,
                        color: Colors.blueAccent,
                      ),
                      Text(
                          "Apartemen Nusa Indah, Bogor",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.blueAccent,
                            ),
                          )
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 10),
                    child: Text(
                        "Detail",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                        "Ruangan yang cocok untuk anda meeting dengan tim, dengan fasilitas yang mumpuni, orem ipsum dolor sit amet, consectetur adipiscing elit. Sed arcu erat, imperdiet vitae facilisis quis, aliquam at diam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam sollicitudin libero congue, volutpat dolor vitae, commodo ipsum. Fusce et dapibus nisi. Cras consequat nisl non mi suscipit, et mollis ipsum tincidunt. Morbi accumsan auctor vulputate. Duis elementum odio id velit pellentesque rutrum. Donec tincidunt nisl sed sapien commodo",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,

                          ),
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                        "Fasilitas",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blueAccent,
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Icon(
                            Icons.tv,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blueAccent,
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Icon(
                          Icons.disc_full_sharp,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blueAccent,
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Icon(
                          Icons.chair,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blueAccent,
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Icon(
                          Icons.ac_unit,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blueAccent,
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Icon(
                          Icons.table_bar_sharp,
                          color: Colors.blueAccent,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 30),
                    height: 65,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.blueAccent[100]
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
                            "Pesan Sekarang !",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                textStyle: TextStyle(fontSize: 14.0, color: Colors.white)
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

