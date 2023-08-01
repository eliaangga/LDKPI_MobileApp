import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/models/informasi_pengadaan_model.dart';

class InformasiPengadaan extends StatefulWidget {
  const InformasiPengadaan({Key? key}) : super(key: key);

  @override
  State<InformasiPengadaan> createState() => _InformasiPengadaanState();
}

class _InformasiPengadaanState extends State<InformasiPengadaan> {
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
                          AppLocalizations.of(context)!.informasi_pengadaan,
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
                  const SizedBox(width: 20),
                ],
              ),
            ),
            InteractiveViewer(
              child: Container(
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
                                  future: koneksi.fetchPengadaan(),
                                  builder: (BuildContext context,
                                      AsyncSnapshot<InformasiPengadaanModel>
                                          snapshot) {
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
                                            fontSize: const FontSize(14),
                                            fontWeight: FontWeight.w400,
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
                                )),
                          ],
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
    );
  }
}
