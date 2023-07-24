import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/models/pemberian_hibah_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PH extends StatefulWidget {
  PemberianHibahModel konten;
  PH({Key? key, required this.konten}) : super(key: key);

  @override
  State<PH> createState() => _PHState();
}

class _PHState extends State<PH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 135,
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
                        padding: EdgeInsets.fromLTRB(5, 25, 10, 10),
                        child: Text(
                          AppLocalizations.of(context)!.pemberian_hibah,
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
                  SizedBox(width: 60),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 2400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(31, 10, 30, 9.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 20,
                              left: 20,
                              bottom: 10,
                              right: 20,
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
                                        fontSize: FontSize(15),
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
