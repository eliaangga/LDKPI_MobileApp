import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/models/sejarah_model.dart';

class Sejarah extends StatefulWidget {
  SejarahModel konten;
  Sejarah({Key? key, required this.konten}) : super(key: key);

  @override
  State<Sejarah> createState() => _SejarahState();
}

class _SejarahState extends State<Sejarah> {
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
                  SizedBox(
                    width: 20,
                  ),
                  const TombolKembali(),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 25, 10, 10),
                        child: Text(
                          'Sejarah',
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
                  const SizedBox(width: 70),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 2300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 15, 20, 9.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (widget.konten.img != '')
                            Container(
                              margin: EdgeInsets.only(bottom: 11.5),
                              width: 328,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 300,
                                  height: 154,
                                  child: Image(
                                    image: NetworkImage(widget.konten.img),
                                  ),
                                ),
                              ),
                            ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 1,
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
                                        lineHeight: LineHeight(1),
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
