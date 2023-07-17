import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/models/investasi_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Investasi extends StatefulWidget {
  InvestasiModel invest;
  Investasi({Key? key, required this.invest}) : super(key: key);

  @override
  _InvestasiState createState() => _InvestasiState();
}

class _InvestasiState extends State<Investasi> {
  final TextEditingController _controllerSearch = TextEditingController();
  late List<String> _listInvestasi;

  @override
  void initState() {
    super.initState();
    _listInvestasi = [];
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
                SizedBox(width: 20),
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
                Expanded(
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      'Investasi',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 115),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 950,
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
                          margin: EdgeInsets.only(bottom: 5),
                          width: 328,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width - 50,
                              child: Image.asset('assets/assets/images/5.jpeg'),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 20,
                            left: 20,
                            bottom: 10,
                            right: 20,
                          ),
                          child: widget.invest.konten == ''
                              ? Center(
                                  child: Text('Data Not Found'),
                                )
                              : Html(
                                  onLinkTap:
                                      (url, context, attributes, element) {
                                    launchUrlString(url!);
                                  },
                                  data: widget.invest.konten,
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
    );
  }
}