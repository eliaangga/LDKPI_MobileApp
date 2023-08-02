import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/components/home/kontainer_berita_terbaru.dart';
import 'package:ldkpi_news_app/components/home/slider.dart';
import 'package:ldkpi_news_app/components/home/slider2.dart';
import 'package:ldkpi_news_app/components/home/video_player.dart';
import 'package:ldkpi_news_app/providers/berita_page_provider.dart';
import 'package:ldkpi_news_app/providers/start_app_provider.dart';
import 'package:ldkpi_news_app/screens/penerima_hibah.dart';
import 'package:ldkpi_news_app/screens/proses_bisnis_page.dart';
import 'package:marquee_widget/marquee_widget.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 18),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double tittletextSize = 10;
    double mewsize = 10;
    double textsize = 10;
    if (screenWidth < 365) {
      tittletextSize = 10;
      mewsize = 50;
      textsize = 8;
    } else if (screenWidth < 700) {
      tittletextSize = 20;
      mewsize = 80;
      textsize = 12;
    } else if (screenWidth < 1100) {
      tittletextSize = 30;
      mewsize = 140;
      textsize = 18;
    } else if (screenWidth < 1400) {
      tittletextSize = 35;
      mewsize = 160;
      textsize = 20;
    }

    final beritaProvider =
        Provider.of<BeritaPageProvider>(context, listen: false);
    final homeProvider = Provider.of<StartAppProvider>(context, listen: false);

    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 2.5),
          const SliderScreen(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
            child: Text(
              AppLocalizations.of(context)!.pemberian_hibah,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: tittletextSize),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
            height: mewsize,
            width: 1250,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PenerimaHibah()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            offset: Offset(0, 4),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/assets/images/Investment.jpg',
                              fit: BoxFit.fitHeight,
                              width: 45,
                              height: 45,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              AppLocalizations.of(context)!.penerima_hibah,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: textsize,
                                fontWeight: FontWeight.w700,
                                height: 1,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProsesBisnis()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            offset: Offset(0, 4),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/assets/images/Giving.jpg',
                              fit: BoxFit.fitHeight,
                              width: 45,
                              height: 45,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              AppLocalizations.of(context)!.proses_bisnis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: textsize,
                                fontWeight: FontWeight.w700,
                                height: 1,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: SizedBox(
              height: 5,
            ),
          ),
          Container(
            width: double.infinity,
            color: const Color.fromRGBO(255, 235, 59, 1),
            height: 40,
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(
                    (0.35 - _animationController.value) *
                        MediaQuery.of(context).size.width,
                    1,
                  ),
                  child: child,
                );
              },
              child: Marquee(
                textDirection: TextDirection.ltr,
                animationDuration: const Duration(minutes: 1),
                child: Consumer<StartAppProvider>(
                  builder: (context, value, child) {
                    if (value.marqueeKonten != '') {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Html(
                          data: value.marqueeKonten,
                          onLinkTap: (url, context, attributes, element) async {
                            if (await canLaunchUrl(Uri.parse(url!))) {
                              await launchUrl(Uri.parse(url));
                            }
                          },
                          shrinkWrap: true,
                          style: {
                            'html': Style(
                              fontFamily: 'Gotham',
                              textAlign: TextAlign.justify,
                              fontSize: FontSize(textsize),
                              fontWeight: FontWeight.w100,
                              lineHeight: const LineHeight(1.1111111111),
                              color: const Color(0xff000000),
                              maxLines: 1,
                            ),
                          },
                        ),
                      );
                    } else {
                      return const SizedBox(
                        height: 10,
                      );
                    }
                  },
                ),
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(
              height: 10,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
            child: Text(
              AppLocalizations.of(context)!.berita_terbaru,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: tittletextSize),
            ),
          ),
          for (var i = 0; i < beritaProvider.listBeritaTerbaru.length; i++)
            Consumer<BeritaPageProvider>(builder: (context, value, child) {
              if (value.listBeritaTerbaru.isEmpty) {
                return const CupertinoActivityIndicator();
              } else {
                return KontainerBeritaTerbaru(provider: beritaProvider, i: i);
              }
            }),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
            child: SizedBox(
              width: double.infinity,
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  style: const TextStyle(
                    fontFamily: 'Gotham',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    height: 0.5555555556,
                    color: Color(0xff000000),
                  ),
                  children: [
                    TextSpan(
                      text: AppLocalizations.of(context)!.profil_aid,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: tittletextSize),
                    ),
                  ],
                ),
              ),
            ),
          ),
          FutureBuilder(
            future: homeProvider.getLinkVideo(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData && snapshot.data != 'not') {
                return VideoPlayerWidget(
                    url: snapshot.data, dataSourceType: DataSourceType.network);
              }
              return const CupertinoActivityIndicator();
            },
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
            child: Text(
              AppLocalizations.of(context)!.sebaran_realisasi,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: tittletextSize),
            ),
          ),
          FutureBuilder(
            future: homeProvider.getListSebaranHibah(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                double width = MediaQuery.of(context).size.width * 0.8;
                double height = width * 0.352;
                return InteractiveViewer(
                  child: Center(
                    child: SizedBox(
                      width: width,
                      height: height,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: snapshot.data![0] == 'not'
                            ? const CupertinoActivityIndicator()
                            : Image(image: NetworkImage(snapshot.data![0])),
                      ),
                    ),
                  ),
                );
              }
              return const CupertinoActivityIndicator();
            },
          ),
          FutureBuilder(
            future: homeProvider.getListSebaranHibah(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                double width = MediaQuery.of(context).size.width * 0.6;
                double height = width * (176 / 340);
                return InteractiveViewer(
                  child: Center(
                    child: SizedBox(
                      width: width,
                      height: height,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: snapshot.data![1] == 'not'
                            ? const CupertinoActivityIndicator()
                            : Image(image: NetworkImage(snapshot.data![1])),
                      ),
                    ),
                  ),
                );
              }
              return const CupertinoActivityIndicator();
            },
          ),
          const SizedBox(height: 5),
          const SliderScreen2(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
