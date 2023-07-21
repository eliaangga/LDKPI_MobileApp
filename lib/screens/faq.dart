import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  final TextEditingController _controllerSearch = TextEditingController();
  late List<String> _listFAQ;

  @override
  void initState() {
    super.initState();
    _listFAQ = [];
  }

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
                  SizedBox(
                    width: 20,
                  ),
                  const TombolKembali(),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 25, 15, 10),
                        child: Text(
                          'FAQ',
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
                  const SizedBox(width: 65),
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
                            margin: const EdgeInsets.only(
                              top: 0,
                              left: 25,
                              bottom: 0,
                              right: 25,
                            ),
                            child: Text(
                              "The child of prophecy, who was chosen along with the Staff of Selection. She appears a touch younger, looking as she did at the halfway point, right in the middle of her journey to reach Camelot. Yay, it's finally my turn to shine! Caster Altria will do the very best she can!",
                              style: TextStyle(
                                fontFamily: 'Gotham',
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                                height: 1.1111111111,
                                color: Color(0xff000000),
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
    );
  }
}
