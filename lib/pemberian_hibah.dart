import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/model/pemberian_hibah_model.dart';

class PH extends StatefulWidget {
  PemberianHibahModel konten;
  PH({Key? key, required this.konten}) : super(key: key);

  @override
  State<PH> createState() => _PHState();
}

class _PHState extends State<PH> {
  final TextEditingController _controllerSearch = TextEditingController();
  late List<String> _listPH;

  @override
  void initState() {
    super.initState();
    _listPH = [];
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
                  margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
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
                      'Pemberian Hibah',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 70),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 1000,
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
