import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/models/proses_bisnis_model.dart';

class ProsesBisnis extends StatefulWidget {
  const ProsesBisnis({super.key});

  @override
  State<ProsesBisnis> createState() => _ProsesBisnis();
}

class _ProsesBisnis extends State<ProsesBisnis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                      padding: const EdgeInsets.fromLTRB(5, 25, 15, 10),
                      child: Text(
                        AppLocalizations.of(context)!.proses_bisnis,
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
                const SizedBox(width: 55),
              ],
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: koneksi.fetchProcess(),
              builder: (BuildContext context,
                  AsyncSnapshot<ProsesBisnisModel> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CupertinoActivityIndicator();
                } else if (snapshot.hasData) {
                  return InteractiveViewer(
                    child: ListView(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 1, left: 25, bottom: 10, right: 25),
                          child: Text(
                            AppLocalizations.of(context)!.proses_bisnis,
                            style: const TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w900),
                          ),
                        ),
                        if (snapshot.data!.gambar != '')
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 50,
                                child: Image.network(
                                  snapshot.data!.gambar,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ],
                          ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 20,
                            left: 5,
                            bottom: 10,
                            right: 5,
                          ),
                          child: Html(
                            data: snapshot.data!.konten,
                            style: {
                              'html': Style(
                                fontFamily: 'Gotham',
                                textAlign: TextAlign.justify,
                                fontSize: const FontSize(16),
                                fontWeight: FontWeight.w100,
                                lineHeight: const LineHeight(1.1111111111),
                                color: const Color(0xff000000),
                              ),
                              'tr': Style(
                                border: const Border(
                                  bottom: BorderSide(color: Colors.grey),
                                  top: BorderSide(color: Colors.grey),
                                  left: BorderSide(color: Colors.grey),
                                  right: BorderSide(color: Colors.grey),
                                ),
                              ),
                              'table': Style(
                                alignment: Alignment.topCenter,
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
    );
  }
}
