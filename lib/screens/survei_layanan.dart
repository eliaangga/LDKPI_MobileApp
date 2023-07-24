import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/models/survei_layanan_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SurveiLayanan extends StatefulWidget {
  SurveiLayananModel konten;
  SurveiLayanan({Key? key, required this.konten}) : super(key: key);

  @override
  State<SurveiLayanan> createState() => _SurveiLayananState();
}

class _SurveiLayananState extends State<SurveiLayanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 145,
              decoration: BoxDecoration(
                color: const Color(0xFF02347C),
                image: DecorationImage(
                  image: AssetImage('assets/assets/images/kemenkeu.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  const TombolKembali(),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 25, 15, 10),
                        child: Text(
                          'Survey Kepuasaan Layanan LDKPI',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 844,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(31, 15, 30, 9.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 0,
                              left: 25,
                              bottom: 0,
                              right: 25,
                            ),
                            child: widget.konten.konten == ''
                                ? const Center(
                                    child: Text('Data Not Found'),
                                  )
                                : Html(
                                    data: widget.konten.konten,
                                    onLinkTap:
                                        (url, context, attributes, element) {
                                      launchUrlString(url!);
                                    },
                                    style: {
                                      'html': Style(
                                        fontFamily: 'Gotham',
                                        fontSize: FontSize(9),
                                        fontWeight: FontWeight.w400,
                                        lineHeight: LineHeight(1.1111111111),
                                        color: Color(0xff000000),
                                      ),
                                    },
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
    );
  }
}
