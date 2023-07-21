import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/models/nilai_budaya_model.dart';

class NilaiBudaya extends StatefulWidget {
  NilaiBudayaModel konten;
  NilaiBudaya({Key? key, required this.konten}) : super(key: key);

  @override
  State<NilaiBudaya> createState() => _NilaiBudayaState();
}

class _NilaiBudayaState extends State<NilaiBudaya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 95,
              color: const Color(0xFF02347C),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  const TombolKembali(),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 25, 10, 10),
                        child: Text(
                          'Nilai & Budaya',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 60),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 1650,
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
                                    style: {
                                      'html': Style(
                                        fontFamily: 'Gotham',
                                        textAlign: TextAlign.justify,
                                        fontSize: FontSize(16),
                                        fontWeight: FontWeight.w100,
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
