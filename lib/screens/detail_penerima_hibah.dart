import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/models/negara_model.dart';
import 'package:ldkpi_news_app/main.dart';

class DetailPenerimaHibah extends StatelessWidget {
  final NegaraModel negara;
  const DetailPenerimaHibah({
    super.key,
    required this.negara,
  });

  @override
  Widget build(BuildContext context) {
    String detailBaru = negara.detail
        .replaceAll(RegExp(r'img src=\"'), 'img src=\"${koneksi.apiUrl}');

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
                TombolKembali(),
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
                    negara.nama,
                    style: const TextStyle(
                        fontSize: 23, fontWeight: FontWeight.w900),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: Image.network(
                        negara.gambar,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
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
                    data: detailBaru,
                    style: {
                      'html': Style(
                        fontFamily: 'Gotham',
                        textAlign: TextAlign.justify,
                        fontSize: FontSize(16),
                        fontWeight: FontWeight.w100,
                        lineHeight: LineHeight(1.1111111111),
                        color: Color(0xff000000),
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
          ),
        ],
      ),
    );
  }
}
