import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen2 extends StatefulWidget {
  const SliderScreen2({Key? key}) : super(key: key);

  @override
  State<SliderScreen2> createState() => _SliderScreenState2();
}

class _SliderScreenState2 extends State<SliderScreen2> {
  List<Map<String, dynamic>> imageList1 = [
    {"id": 1, "image_path": 'assets/assets/images/1.png'},
    {"id": 2, "image_path": 'assets/assets/images/2.png'},
    {"id": 3, "image_path": 'assets/assets/images/3.jpg'},
  ];

  List<Map<String, dynamic>> imageList2 = [
    {"id": 4, "image_path": 'assets/assets/images/4.png'},
    {"id": 5, "image_path": 'assets/assets/images/5.jpeg'},
    {"id": 6, "image_path": 'assets/assets/images/6.png'},
  ];

  final CarouselController carouselController1 = CarouselController();
  final CarouselController carouselController2 = CarouselController();

  int currentIndex1 = 0;
  int currentIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    final carouselWidth = MediaQuery.of(context).size.width;
    final carouselHeight = carouselWidth / 2;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              const SizedBox(width: 35),
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x26000000),
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          print(currentIndex1);
                        },
                        child: CarouselSlider(
                          items: imageList1
                              .map(
                                (item) => SizedBox(
                                  width: carouselWidth,
                                  height: carouselHeight,
                                  child: Image.asset(
                                    item['image_path'],
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              )
                              .toList(),
                          carouselController: carouselController1,
                          options: CarouselOptions(
                            scrollPhysics: const BouncingScrollPhysics(),
                            autoPlay: true,
                            aspectRatio: 2.0,
                            viewportFraction: 2,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex1 = index;
                                carouselController2.animateToPage(index);
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x26000000),
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          print(currentIndex2);
                        },
                        child: CarouselSlider(
                          items: imageList2
                              .map(
                                (item) => SizedBox(
                                  width: carouselWidth,
                                  height: carouselHeight,
                                  child: Image.asset(
                                    item['image_path'],
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              )
                              .toList(),
                          carouselController: carouselController2,
                          options: CarouselOptions(
                            scrollPhysics: const BouncingScrollPhysics(),
                            autoPlay: true,
                            aspectRatio: 2,
                            viewportFraction: 2,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex2 = index;
                                carouselController1.animateToPage(index);
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 35)
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageList1.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () {
                carouselController1.animateToPage(entry.key);
                carouselController2.animateToPage(entry.key);
              },
              child: Container(
                width: currentIndex1 == entry.key ? 17 : 7,
                height: 7.0,
                margin: const EdgeInsets.symmetric(
                  horizontal: 3.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentIndex1 == entry.key
                      ? const Color(0xFF08528F)
                      : Colors.lightBlue,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
