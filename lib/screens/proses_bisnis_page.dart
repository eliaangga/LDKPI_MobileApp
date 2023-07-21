import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/models/berita_model.dart';

class ProsesBisnis extends StatefulWidget {
  ProsesBisnis({super.key, required this.listProsesBisnis});

  List<BeritaModel> listProsesBisnis;
  @override
  State<ProsesBisnis> createState() => _ProsesBisnis();
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    required this.isExpanded,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<BeritaModel> listProsesBisnis = [];

List<Item> generateItems() {
  return List<Item>.generate(listProsesBisnis.length, (int index) {
    return Item(
      headerValue: '${listProsesBisnis[index].title}',
      expandedValue: '${listProsesBisnis[index].isi}',
      isExpanded: index == 0 ? true : false,
    );
  });
}

class _ProsesBisnis extends State<ProsesBisnis> {
  @override
  void initState() {
    super.initState();
    listProsesBisnis = widget.listProsesBisnis;
    _data = generateItems();
    debugPrint(_data.length.toString());
  }

  List<Item> _data = [];
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
                        'Proses Bisnis',
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
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: ListView.builder(
                itemCount: listProsesBisnis.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: const Color(0xFF02347C),
                    child: ExpansionTile(
                      initiallyExpanded: index == 0 ? true : false,
                      iconColor: Colors.white,
                      collapsedIconColor: Colors.white,
                      title: Text(
                        listProsesBisnis[index].title,
                        style: const TextStyle(color: Colors.white),
                      ),
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          width: double.maxFinite,
                          color: Colors.white,
                          child: Text(
                            listProsesBisnis[index].isi,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
