import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/screens/investasi.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> imageList = [
      {"id": 1, "image_path": listCarousel[0]},
      {"id": 2, "image_path": listCarousel[1]},
      {"id": 3, "image_path": listCarousel[2]}
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
        child: item['image_path'] == 'not'
            ? const CupertinoActivityIndicator()
            : Image(
                image: NetworkImage(item['image_path']),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
      );
    }).toList();

    // List<Widget> carouselItems = [
    //   const CupertinoActivityIndicator(),
    //   const CupertinoActivityIndicator(),
    //   const CupertinoActivityIndicator()
    // ];
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
