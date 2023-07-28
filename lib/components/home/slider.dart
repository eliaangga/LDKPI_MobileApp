import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/providers/home_page_provider.dart';
import 'package:ldkpi_news_app/screens/investasi.dart';
import 'package:provider/provider.dart';

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
    final homeProvider = Provider.of<HomePageProvider>(context, listen: false);
    List<Map<String, dynamic>> imageList = [
      {"id": 0, "image_path": ''},
      {"id": 1, "image_path": ''},
      {"id": 2, "image_path": ''}
    ];
    List<Widget> carouselItems = imageList.map((item) {
      return GestureDetector(
        onTap: () {
          switch (item['id']) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Investasi()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Investasi()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Investasi()),
              );
              break;
            default:
              break;
          }
        },
        child: FutureBuilder(
          future: homeProvider.getListCarousel(),
          builder:
              (BuildContext contect, AsyncSnapshot<List<String>> snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data![item['id']] != 'not') {
                return Image(
                  image: NetworkImage(snapshot.data![item['id']]),
                  fit: BoxFit.cover,
                  width: double.infinity,
                );
              } else {
                return Icon(
                  Icons.verified_user_rounded,
                  color: Colors.black,
                );
              }
            }
            return const CupertinoActivityIndicator();
          },
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
