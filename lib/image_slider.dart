import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {


  final urlImages=[
   ' banners/banner1.jpeg'
    'banners/banner2.jpeg'
   ' banners/banner3.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: PageView(
                scrollDirection: Axis.horizontal,
                allowImplicitScrolling: true,
                physics: ClampingScrollPhysics(),
                children: [
                  Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'banners/banner1.jpeg',
                    ),
                  ),
                  Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'banners/banner2.jpeg',
                    ),
                  ),
                  Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'banners/banner3.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // children: [
              //   List.generate(
              //     int length: 2,
              //     (index) => AnimatedContainer(
              //       duration: Duration(microseconds: 300),
              //     ),
              // //   );
              // ],
            ),
          ),
        ),
      ],
    );
  }
}
