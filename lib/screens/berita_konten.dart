import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/models/berita_model.dart';

class BeritaKonten extends StatelessWidget {
  final BeritaModel kontenBerita;
  const BeritaKonten({
    super.key,
    required this.kontenBerita,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 20),
              Expanded(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Text(
                    '',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(4, 0, 20, 20),
                        ),
                        child: Container(
                          width: 61,
                          height: 18,
                          decoration: BoxDecoration(
                            color: const Color(0xff02275c),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: const Center(
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
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 1, left: 25, bottom: 10, right: 25),
                  child: Text(
                    kontenBerita.title,
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
                        kontenBerita.img,
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
                    data: kontenBerita.isi,
                    style: {
                      'html': Style(
                        fontFamily: 'Gotham',
                        textAlign: TextAlign.justify,
                        fontSize: const FontSize(16),
                        fontWeight: FontWeight.w100,
                        lineHeight: const LineHeight(1.1111111111),
                        color: const Color(0xff000000),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          '${AppLocalizations.of(context)!.penulis} : ${kontenBerita.penulis}'),
                      Text(
                          '${AppLocalizations.of(context)!.editor}  : ${kontenBerita.editor}'),
                    ],
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
