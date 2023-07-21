import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/providers/berita_page_provider.dart';

class KontainerBeritaTerbaru extends StatelessWidget {
  BeritaPageProvider provider;
  int i;
  KontainerBeritaTerbaru({super.key, required this.provider, required this.i});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {
                      style:
                      TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(1, 1, 10, 25),
                          width: 98,
                          height: 69,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image(
                                image: NetworkImage(
                                    provider.listBeritaTerbaru[i].img)),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(10, 10, 15, 13),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(5, 1, 1, 1),
                                  child: Text(
                                    provider.listBeritaTerbaru[i].title,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    constraints: const BoxConstraints(
                                      maxWidth: 330,
                                    ),
                                    child: Html(
                                      data: provider.listBeritaTerbaru[i].isi,
                                      style: {
                                        'html': Style(
                                            fontFamily: 'Gotham',
                                            textAlign: TextAlign.justify,
                                            fontSize: FontSize(10),
                                            fontWeight: FontWeight.w200,
                                            lineHeight:
                                                LineHeight(1.1111111111),
                                            color: Color(0xff000000),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
