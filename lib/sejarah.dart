import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/model/sejarah_model.dart';

class Sejarah extends StatefulWidget {
  SejarahModel konten;
  Sejarah({Key? key, required this.konten}) : super(key: key);

  @override
  State<Sejarah> createState() => _SejarahState();
}

class _SejarahState extends State<Sejarah> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 70,
            color: const Color(0xFF02347C),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 55, 0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 61,
                      height: 18,
                      decoration: BoxDecoration(
                        color: Color(0xff02275c),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Center(
                        child: Text(
                          '< Kembali',
                          style: TextStyle(
                            fontFamily: 'Gotham',
                            fontSize: 8,
                            fontWeight: FontWeight.w700,
                            height: 1.25,
                            color: Color(0xffffffff),
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 32.5,
                ),
                Expanded(
                  child: Text(
                    'Sejarah',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
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
                        if (widget.konten.img != '')
                          Container(
                            margin: EdgeInsets.only(bottom: 60.5),
                            width: 328,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 329,
                                height: 154,
                                child: Image(
                                    image: NetworkImage(widget.konten.img)),
                              ),
                            ),
                          ),
                        Container(
                          margin: const EdgeInsets.only(
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
                                      fontSize: FontSize(9),
                                      fontWeight: FontWeight.w400,
                                      lineHeight: LineHeight(1.1111111111),
                                      color: Color(0xff000000),
                                    ),
                                  },
                                ),
                        ),
                      ]),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
