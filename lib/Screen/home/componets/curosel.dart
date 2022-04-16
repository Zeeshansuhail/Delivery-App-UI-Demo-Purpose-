import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Curosel extends StatelessWidget {
  const Curosel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
        options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: false,
            viewportFraction: 1.0,
            height: 200.0),
        itemCount: 4,
        itemBuilder: (context, index, realindex) {
          return Container(
            padding: const EdgeInsets.only(
              right: 5.0,
              left: 5.0,
              bottom: 10.0,
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://www.bignulled.com/composants/uploads/2021/06/49c9adb18e44be0711a94e827042f630.png"),
                    ),
                  ),
                ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       gradient: LinearGradient(
                //           colors: [
                //             Colors.black.withOpacity(0.9),
                //             Colors.white.withOpacity(0.0),
                //           ],
                //           begin: Alignment.bottomCenter,
                //           end: Alignment.topCenter,
                //           stops: const [0.1, 0.9])),
                // ),
                // Positioned(
                //   bottom: 30.0,
                //   left: 10.0,
                //   child: Container(
                //     width: 220.0,
                //     padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                //     child: Column(
                //       children: const [
                //         Text(
                //           "High Quality Mens Wear",
                //           style: TextStyle(
                //               height: 1.5,
                //               fontWeight: FontWeight.bold,
                //               color: Colors.white,
                //               fontSize: 12.0),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
