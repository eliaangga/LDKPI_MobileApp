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
import 'package:ldkpi_news_app/screens/investasi.dart';
import 'package:ldkpi_news_app/screens/pemberian_hibah.dart';
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
              AppLocalizations.of(context)!.layanan,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
            width: double.infinity,
            height: 76,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Investasi()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      padding: const EdgeInsets.fromLTRB(19, 15, 19, 16),
                      width: 165,
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
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              width: 40,
                              height: 50,
                              child: Image.asset(
                                  'assets/assets/images/Investment.jpg'),
                            ),
                            Center(
                              child: Text(
                                AppLocalizations.of(context)!.investasi,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                  color: Color(0xff000000),
                                ),
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
                            builder: (context) => const PemberianHibah()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      padding: const EdgeInsets.fromLTRB(19, 15, 14, 16),
                      width: 165,
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
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                  'assets/assets/images/Giving.jpg'),
                            ),
                            Center(
                              child: Container(
                                constraints: const BoxConstraints(maxWidth: 80),
                                child: Text(
                                  AppLocalizations.of(context)!.pemberian_hibah,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontFamily: 'Gotham',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    height: 1,
                                    color: Color(0xff000000),
                                  ),
                                ),
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
            color: Color.fromRGBO(255, 235, 59, 1),
            height: 40,
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(
                    (0.35 - _animationController.value) * screenWidth,
                    1,
                  ),
                  child: child,
                );
              },
              child: Marquee(
                textDirection: TextDirection.ltr,
                animationDuration: const Duration(minutes: 1),
                child: FutureBuilder(
                  future: homeProvider.getMarquee(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Html(
                        data: snapshot.data,
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
                            fontSize: const FontSize(12),
                            fontWeight: FontWeight.w100,
                            lineHeight: const LineHeight(1.1111111111),
                            color: const Color(0xff000000),
                            maxLines: 1,
                          ),
                        },
                      );
                    }
                    return const Text('');
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
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
          Text(homeProvider.marqueeKonten),
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
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          FutureBuilder(
            future: homeProvider.getListSebaranHibah(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return InteractiveViewer(
                  child: Center(
                    child: SizedBox(
                      width: 500,
                      height: 176,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: snapshot.data![0] == 'not'
                              ? const CupertinoActivityIndicator()
                              : Image(image: NetworkImage(snapshot.data![0]))),
                    ),
                  ),
                );
              }
              return const CupertinoActivityIndicator();
            },
          ),
          const SizedBox(height: 12),
          FutureBuilder(
            future: homeProvider.getListSebaranHibah(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return InteractiveViewer(
                  child: Center(
                    child: SizedBox(
                      width: 340,
                      height: 176,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: snapshot.data![1] == 'not'
                              ? const CupertinoActivityIndicator()
                              : Image(image: NetworkImage(snapshot.data![1]))),
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
