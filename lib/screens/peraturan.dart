import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/models/peraturan_model.dart';
import 'package:url_launcher/url_launcher.dart';

class Peraturan extends StatefulWidget {
  const Peraturan({Key? key}) : super(key: key);

  @override
  State<Peraturan> createState() => _PeraturanState();
}

class _PeraturanState extends State<Peraturan> {
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
                        padding: const EdgeInsets.fromLTRB(5, 25, 15, 10),
                        child: Text(
                          AppLocalizations.of(context)!.peraturan,
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
                  const SizedBox(width: 65),
                ],
              ),
            ),
            InteractiveViewer(
              child: Container(
                width: double.infinity,
                height: 935,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: FutureBuilder(
                        future: koneksi.fetchPeraturan(),
                        builder: (BuildContext context,
                            AsyncSnapshot<PeraturanModel> snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const CupertinoActivityIndicator();
                          } else if (snapshot.data!.konten != '') {
                            return Container(
                              padding: EdgeInsets.fromLTRB(31, 15, 30, 9.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  snapshot.data!.konten == ''
                                      ? const Center(
                                          child: Text('Data Not Found'),
                                        )
                                      : Html(
                                          data: snapshot.data!.konten,
                                          style: {
                                            'html': Style(
                                              fontFamily: 'Gotham',
                                              textAlign: TextAlign.justify,
                                              fontSize: const FontSize(9),
                                              fontWeight: FontWeight.w400,
                                              lineHeight: LineHeight(2),
                                              color: Color(0xff000000),
                                            ),
                                          },
                                          onLinkTap: (url, context, attributes,
                                              element) async {
                                            try {
                                              if (await canLaunch(url!)) {
                                                await launch(url);
                                              } else {
                                                throw 'Could not launch $url';
                                              }
                                            } catch (e) {
                                              print('Error: $e');
                                            }
                                          },
                                        ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
