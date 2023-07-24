import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/models/proses_bisnis_model.dart';

class ProsesBisnis extends StatefulWidget {
  // ProsesBisnis({super.key, required this.listProsesBisnis});
  // List<BeritaModel> listProsesBisnis;

  ProsesBisnis({super.key, required this.model});
  ProsesBisnisModel model;

  @override
  State<ProsesBisnis> createState() => _ProsesBisnis();
}

// class Item {
//   Item({
//     required this.expandedValue,
//     required this.headerValue,
//     required this.isExpanded,
//   });

//   String expandedValue;
//   String headerValue;
//   bool isExpanded;
// }

// List<BeritaModel> listProsesBisnis = [];

// List<Item> generateItems() {
//   return List<Item>.generate(listProsesBisnis.length, (int index) {
//     return Item(
//       headerValue: '${listProsesBisnis[index].title}',
//       expandedValue: '${listProsesBisnis[index].isi}',
//       isExpanded: index == 0 ? true : false,
//     );
//   });
// }

class _ProsesBisnis extends State<ProsesBisnis> {
  // @override
  // void initState() {
  //   super.initState();
  //   listProsesBisnis = widget.listProsesBisnis;
  //   _data = generateItems();
  //   debugPrint(_data.length.toString());
  // }

  // List<Item> _data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 90,
            color: const Color(0xFF02347C),
            child: Row(
              children: [
                SizedBox(width: 20),
                const TombolKembali(),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 25, 15, 10),
                      child: Text(
                        AppLocalizations.of(context)!.proses_bisnis,
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
                const SizedBox(width: 55),
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
                    AppLocalizations.of(context)!.proses_bisnis,
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
                        widget.model.gambar,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 5,
                    bottom: 10,
                    right: 5,
                  ),
                  child: Html(
                    data: widget.model.konten,
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
