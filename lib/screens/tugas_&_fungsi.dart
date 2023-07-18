import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';

class TugasFungsi extends StatefulWidget {
  const TugasFungsi({Key? key}) : super(key: key);

  @override
  _TugasFungsiState createState() => _TugasFungsiState();
}

class _TugasFungsiState extends State<TugasFungsi> {
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
                const TombolKembali(),
                SizedBox(
                  width: 32.5,
                ),
                Expanded(
                  child: Text(
                    'Tugas & Fungsi',
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
                              child: Image.asset('assets/images/mew.jpeg'),
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
