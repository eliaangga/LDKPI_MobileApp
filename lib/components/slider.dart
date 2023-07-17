import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/screens/investasi.dart';

class SliderScreen extends StatefulWidget {
  // List<String> carousel = [];
  SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List<String> carousel = [];
  List<Map<String, dynamic>> imageList = [];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    koneksi.fetchCarousel().then((response) {
      Future.delayed(Duration(milliseconds: 1000));
      setState(() {
        carousel = response;
        print(response);
      });
    });
    // setState(() {
    //   carousel = listCarousel;
    // });
  }

  @override
  Widget build(BuildContext context) {
    imageList = [
      {"id": 1, "image_path": carousel[0]},
      {"id": 2, "image_path": carousel[1]},
      {"id": 3, "image_path": carousel[2]}
    ];
    List<Widget> carouselItems = imageList.map((item) {
      return GestureDetector(
        onTap: () {
          switch (item['id']) {
            case 1:
              koneksi.fetchInvest().then((response) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Investasi(
                            invest: response,
                          )),
                );
              });
              break;
            case 2:
              koneksi.fetchInvest().then((response) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Investasi(
                            invest: response,
                          )),
                );
              });
              break;
            case 3:
              koneksi.fetchInvest().then((response) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Investasi(
                            invest: response,
                          )),
                );
              });
              break;
            default:
              break;
          }
        },
        child: Image(
          image: NetworkImage(item['image_path']),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      );
    }).toList();

    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider(
              items: carouselItems,
              carouselController: carouselController,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 2,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: currentIndex == entry.key ? 17 : 7,
                      height: 7.0,
                      margin: const EdgeInsets.symmetric(horizontal: 3.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == entry.key
                            ? const Color(0xFF08528F)
                            : Colors.lightBlue,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
