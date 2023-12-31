import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/models/nilai_budaya_model.dart';

class NilaiBudaya extends StatefulWidget {
  const NilaiBudaya({Key? key}) : super(key: key);

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
              height: 135,
              decoration: const BoxDecoration(
                color: Color(0xFF02347C),
                image: DecorationImage(
                  image: AssetImage('assets/assets/images/doodle.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  const TombolKembali(),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 25, 10, 10),
                        child: Text(
                          AppLocalizations.of(context)!.nilai_budaya,
                          style: const TextStyle(
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
                      padding: const EdgeInsets.fromLTRB(31, 15, 30, 9.5),
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
                            child: FutureBuilder(
                              future: koneksi.fetchNilaiBudaya(),
                              builder: (BuildContext context,
                                  AsyncSnapshot<NilaiBudayaModel> snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return const CupertinoActivityIndicator();
                                } else if (snapshot.data!.konten != '') {
                                  return Html(
                                    data: snapshot.data!.konten,
                                    style: {
                                      'html': Style(
                                        fontFamily: 'Gotham',
                                        textAlign: TextAlign.justify,
                                        fontSize: const FontSize(16),
                                        fontWeight: FontWeight.w100,
                                        lineHeight:
                                            const LineHeight(1.1111111111),
                                        color: const Color(0xff000000),
                                      ),
                                    },
                                  );
                                } else {
                                  return const Center(
                                    child: Text('Data Not Found'),
                                  );
                                }
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
