import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/models/berita_model.dart';

class KontainerBerita extends StatelessWidget {
  BeritaModel model;

  KontainerBerita({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0x19000000),
            offset: Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      width: (MediaQuery.of(context).size.width / 2) - 10,
      height: 200,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 5),
            width: (MediaQuery.of(context).size.width / 2) - 7,
            height: 66,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                image: NetworkImage(model.img),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Text(model.title),
          const SizedBox(
            height: 5,
          ),
          Html(
            data: model.isi,
            style: {
              'html': Style(
                fontFamily: 'Gotham',
                fontSize: const FontSize(12),
                fontWeight: FontWeight.w400,
                lineHeight: const LineHeight(1),
                color: const Color(0xff000000),
                maxLines: 2,
              ),
            },
          ),
        ],
      ),
    );
  }
}
