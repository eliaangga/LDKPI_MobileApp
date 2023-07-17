import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

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
                      'FAQ',
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
                          child: Html(
                            data: '''
      <p>The child of prophecy, who was chosen along with the Staff of Selection. She appears a touch younger, looking as she did at the halfway point, right in the middle of her journey to reach Camelot. Yay, it's finally my turn to shine! Caster Altria will do the very best she can! In Fate/Grand Order (FGO), there is no character named Altria Caster. However, there is a character named Altria Pendragon, who is also known as Artoria Pendragon or Saber. She is one of the central characters in the Fate series and serves as the legendary King Arthur. As a Saber-class servant, Altria Pendragon is known for her proficiency in swordsmanship and her iconic weapon, Excalibur. It's worth noting that while Artoria Pendragon is primarily portrayed as a Saber-class servant, the Fate series has various alternative versions and alternate classes for its characters. These alternate versions, such as Alter Ego, Archer, Lancer, or Caster, may have slightly different abilities, appearances, or backstories. However, as of my knowledge cutoff in September 2021, there is no official version of Artoria Pendragon specifically designated as a Caster-class servant.</p>
    ''',
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
