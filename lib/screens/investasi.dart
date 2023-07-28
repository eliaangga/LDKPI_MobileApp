import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/models/investasi_model.dart';
import 'package:url_launcher/url_launcher.dart';

class Investasi extends StatefulWidget {
  Investasi({Key? key}) : super(key: key);

  @override
  State<Investasi> createState() => _InvestasiState();
}

class _InvestasiState extends State<Investasi> {
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
                        padding: EdgeInsets.fromLTRB(40, 25, 10, 10),
                        child: Text(
                          AppLocalizations.of(context)!.investasi,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 100),
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
                                child:
                                    Image.asset('assets/assets/images/5.jpeg'),
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
                            child: FutureBuilder(
                              future: koneksi.fetchInvest(),
                              builder: (BuildContext context,
                                  AsyncSnapshot<InvestasiModel> snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return const CupertinoActivityIndicator();
                                } else if (snapshot.data!.konten != '') {
                                  return Html(
                                      onLinkTap: (url, context, attributes,
                                          element) async {
                                        if (await canLaunchUrl(
                                            Uri.parse(url!))) {
                                          await launchUrl(Uri.parse(url));
                                        }
                                      },
                                      data: snapshot.data!.konten,
                                      style: {
                                        'html': Style(
                                          fontFamily: 'Gotham',
                                          textAlign: TextAlign.justify,
                                          fontSize: FontSize(16),
                                          fontWeight: FontWeight.w100,
                                          lineHeight: LineHeight(1.1111111111),
                                          color: Color(0xff000000),
                                        ),
                                      });
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
