import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/providers/berita_page_provider.dart';
import 'package:ldkpi_news_app/screens/berita_konten.dart';

class KontainerBeritaTerbaru extends StatelessWidget {
  BeritaPageProvider provider;
  int i;
  KontainerBeritaTerbaru({super.key, required this.provider, required this.i});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BeritaKonten(
              kontenBerita: provider.listBeritaTerbaru[i],
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(1, 1, 10, 10),
                          width: 130,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(
                                  provider.listBeritaTerbaru[i].img),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(5, 15, 1, 1),
                                  child: Text(
                                    provider.listBeritaTerbaru[i].title,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    constraints: const BoxConstraints(
                                      maxWidth: 330,
                                    ),
                                    child: Html(
                                      data: provider.listBeritaTerbaru[i].isi,
                                      style: {
                                        'html': Style(
                                            fontFamily: 'Gotham',
                                            textAlign: TextAlign.justify,
                                            fontSize: const FontSize(10),
                                            fontWeight: FontWeight.w200,
                                            lineHeight:
                                                const LineHeight(1.1111111111),
                                            color: const Color(0xff000000),
                                            maxLines: 2),
                                      },
                                    )),
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
          ],
        ),
      ),
    );
  }
}
