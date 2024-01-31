import 'package:booking_room/Page/Dashboard/detail.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';



class SwiperComponent extends StatelessWidget {
  const SwiperComponent();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Swiper(
      onTap: (index) {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => Detail(),
        ));
      },
      itemCount: 30,
      itemHeight: _size.height / 1.8,
      itemWidth: double.infinity,
      containerWidth: double.infinity,
      layout: SwiperLayout.CUSTOM,
      controller: new SwiperController(),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.network(
                "https://picsum.photos/500/500?random=$index",
                height: _size.height / 1.8,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Container(
                height: _size.height / 1.8,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x00000000),
                      Color(0x00000000),
                      Color(0xCC000000),
                      Color(0xCC000000),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "National Park",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Istanbul, Turkey",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
