import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/components/slider.dart';
import 'package:ldkpi_news_app/components/slider2.dart';
import 'package:ldkpi_news_app/components/yotube_player_widget_dart.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/screens/investasi.dart';
import 'package:ldkpi_news_app/screens/pemberian_hibah.dart';
import 'package:marquee_widget/marquee_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  var jsonData;
  String berita = 'Waw Data Center KEMENKEU Diserang Buaya Terbang';

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

  late Future<String> _berita = Future.delayed(
    const Duration(seconds: 1),
    () => berita,
  );

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 10),
          const SliderScreen(),
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 0, 10),
            child: Text(
              AppLocalizations.of(context)!.layanan,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 0, 11, 20),
              width: double.infinity,
              height: 76,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        koneksi.fetchInvest().then((response) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Investasi(
                                      invest: response,
                                    )),
                          );
                        });
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                        padding: EdgeInsets.fromLTRB(19, 15, 19, 16),
                        width: 165,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
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
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                width: 50,
                                height: 50,
                                child: Image.asset(
                                    'assets/assets/images/Investment.jpg'),
                              ),
                              const Center(
                                child: Text(
                                  'Investasi',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Gotham',
                                    fontSize: 14,
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
                  SizedBox(width: 10),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        koneksi.fetchPemberiHibah().then((response) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PH(
                                      konten: response,
                                    )),
                          );
                        });
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        padding: EdgeInsets.fromLTRB(19, 15, 14, 16),
                        width: 165,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
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
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                width: 50,
                                height: 50,
                                child: Image.asset(
                                    'assets/assets/images/Giving.jpg'),
                              ),
                              Center(
                                child: Container(
                                  constraints: BoxConstraints(maxWidth: 80),
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .pemberian_hibah,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 14,
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
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 0, 10),
            child: Text(
              AppLocalizations.of(context)!.menu,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
            height: 64,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                TextButton(
                  onPressed: () {
                    style:
                    TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    );
                  },
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(11, 17, 19.5, 17),
                    width: 107,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                            width: 30,
                            height: 30,
                            child: Icon(
                              Icons.verified_user_rounded,
                              color: Colors.black,
                            ),
                          ),
                          Center(
                            child: Text(
                              'Profil',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                height: 1.2307692308,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 17),
                TextButton(
                  onPressed: () {
                    style:
                    TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    );
                  },
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(7, 17, 9, 17),
                    width: 107,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                            width: 30,
                            height: 30,
                            child: Icon(
                              Icons.info,
                              color: Colors.black,
                            ),
                          ),
                          Center(
                            child: Text(
                              'Informasi',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                height: 1.2307692308,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 17),
                TextButton(
                  onPressed: () {
                    style:
                    TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    );
                  },
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 15, 16.5, 19),
                    width: 107,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 13.5, 0),
                            width: 30,
                            height: 30,
                            child: Icon(
                              Icons.newspaper,
                              color: Colors.black,
                            ),
                          ),
                          Center(
                            child: Text(
                              AppLocalizations.of(context)!.berita,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                height: 0.7692307692,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 25,
            ),
          ),
          FutureBuilder<String>(
            future: _berita,
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              Text isiBerita;
              if (snapshot.hasData) {
                isiBerita = Text('${snapshot.data}');
              } else {
                isiBerita = Text(berita);
              }
              return Container(
                width: double.infinity,
                color: Colors.yellow,
                height: 20,
                child: AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(
                        (1 - _animationController.value) * screenWidth,
                        2.5,
                      ),
                      child: child,
                    );
                  },
                  child: GestureDetector(
                    onTap: () {
                      koneksi.fetchInvest().then((response) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Investasi(
                                    invest: response,
                                  )),
                        );
                      });
                    },
                    child: Marquee(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        berita,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          Expanded(
            child: SizedBox(
              height: 10,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 0, 10),
            child: Text(
              AppLocalizations.of(context)!.berita_terbaru,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => ()),
              // );
            },
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextButton(
                            onPressed: () {
                              style:
                              TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              );
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  width: 98,
                                  height: 69,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                        'assets/assets/images/kemenkeu.png'),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 8, bottom: 13),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 8),
                                          child: Text(
                                            'LDKPI Meraih Penghargaan',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          constraints: const BoxConstraints(
                                            maxWidth: 330,
                                          ),
                                          child: RichText(
                                            text: const TextSpan(
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300,
                                                color: Color(0xff000000),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text:
                                                      'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum',
                                                ),
                                                TextSpan(
                                                  text: ' ....More',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => ()),
              // );
            },
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextButton(
                            onPressed: () {
                              style:
                              TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              );
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  width: 98,
                                  height: 69,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                        'assets/assets/images/kemenkeu.png'),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 8, bottom: 13),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 8),
                                          child: const Text(
                                            'LDKPI Meraih Penghargaan',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          constraints: const BoxConstraints(
                                            maxWidth: 330,
                                          ),
                                          child: RichText(
                                            text: const TextSpan(
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300,
                                                color: Color(0xff000000),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text:
                                                      'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum',
                                                ),
                                                TextSpan(
                                                  text: ' ....More',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => ()),
              // );
            },
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextButton(
                            onPressed: () {
                              style:
                              TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              );
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  width: 98,
                                  height: 69,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                        'assets/assets/images/kemenkeu.png'),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 8, bottom: 13),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 8),
                                          child: const Text(
                                            'LDKPI Meraih Penghargaan',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          constraints: const BoxConstraints(
                                            maxWidth: 330,
                                          ),
                                          child: RichText(
                                            text: const TextSpan(
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300,
                                                color: Color(0xff000000),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text:
                                                      'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum',
                                                ),
                                                TextSpan(
                                                  text: ' ....More',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 0, 10),
            child: Container(
              width: double.infinity,
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  style: TextStyle(
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
          YouTubePlayerWidget(
            videoId: "6_E0YBEnAAM",
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 0, 10),
            child: Text(
              AppLocalizations.of(context)!.sebaran_realisasi,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Center(
            child: SizedBox(
              width: 500,
              height: 176,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset('assets/assets/images/mew.jpeg'),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: SizedBox(
              width: 500,
              height: 176,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset('assets/assets/images/mew.jpeg'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const SliderScreen2(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
