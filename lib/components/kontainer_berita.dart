import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class KontainerBerita extends StatelessWidget {
  String judul, isi, gambar;

  KontainerBerita(
      {super.key,
      required this.judul,
      required this.isi,
      required this.gambar});

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
                image: NetworkImage(gambar),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Text(judul),
          const SizedBox(
            height: 5,
          ),
          Html(
            data: isi,
            style: {
              'html': Style(
                fontFamily: 'Gotham',
                fontSize: FontSize(12),
                fontWeight: FontWeight.w400,
                lineHeight: LineHeight(1),
                color: Color(0xff000000),
                maxLines: 2,
                // textOverflow: TextOverflow.ellipsis,
              ),
            },
          ),
        ],
      ),
    );
  }
}
