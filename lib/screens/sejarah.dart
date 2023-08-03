import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/models/sejarah_model.dart';

class Sejarah extends StatefulWidget {
  const Sejarah({Key? key}) : super(key: key);

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
              decoration: const BoxDecoration(
                color: Color(0xFF02347C),
                image: DecorationImage(
                  image: AssetImage('assets/assets/images/doodle.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const TombolKembali(),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 25, 10, 10),
                        child: Text(
                          AppLocalizations.of(context)!.sejarah,
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
                  const SizedBox(width: 70),
                ],
              ),
            ),
            FutureBuilder(
              future: koneksi.fetchSejarah(),
              builder:
                  (BuildContext context, AsyncSnapshot<SejarahModel> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CupertinoActivityIndicator());
                } else if (snapshot.hasData) {
                  return ListView(
                    shrinkWrap: true,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 9.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            if (snapshot.data!.img != '')
                              InteractiveViewer(
                                child: Container(
                                  margin: const EdgeInsets.only(bottom: 11.5),
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
                                        image: NetworkImage(snapshot.data!.img),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 1,
                                left: 20,
                                bottom: 10,
                                right: 20,
                              ),
                              child: snapshot.data!.konten == ''
                                  ? const Center(
                                      child: Text('Data Not Found'),
                                    )
                                  : Html(
                                      data: snapshot.data!.konten,
                                      style: {
                                        'html': Style(
                                          fontFamily: 'Gotham',
                                          textAlign: TextAlign.justify,
                                          fontSize: const FontSize(15),
                                          fontWeight: FontWeight.w100,
                                          lineHeight: const LineHeight(1),
                                          color: const Color(0xff000000),
                                        ),
                                      },
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  return const Center(
                    child: Text('Data Not Found'),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
