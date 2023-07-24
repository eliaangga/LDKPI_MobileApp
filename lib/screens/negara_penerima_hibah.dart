import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class NPH extends StatefulWidget {
  const NPH({Key? key}) : super(key: key);

  @override
  _NPHState createState() => _NPHState();
}

class _NPHState extends State<NPH> {
  final TextEditingController _controllerSearch = TextEditingController();
  late List<String> _listNPH;

  @override
  void initState() {
    super.initState();
    _listNPH = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                      padding: EdgeInsets.fromLTRB(4, 20, 4, 4),
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
                      '',
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
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      top: 1, left: 25, bottom: 10, right: 25),
                  child: Text(
                    'mew',
                    style: const TextStyle(
                        fontSize: 23, fontWeight: FontWeight.w900),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Image.asset('')),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                    bottom: 10,
                    right: 20,
                  ),
                  child: Html(
                    data: 'mew mew',
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
                Container(
                  margin: const EdgeInsets.only(
                    top: 50,
                    left: 25,
                    right: 25,
                    bottom: 20,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
