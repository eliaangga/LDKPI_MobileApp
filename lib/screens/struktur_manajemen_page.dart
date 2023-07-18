import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/models/berita_model.dart';

class StrukturManajemen extends StatefulWidget {
  StrukturManajemen({super.key, required this.listManajemen});

  List<BeritaModel> listManajemen;
  @override
  State<StrukturManajemen> createState() => _StrukturManajemen();
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

List<BeritaModel> listAllManajemen = [];

List<Item> generateItems() {
  return List<Item>.generate(listAllManajemen.length, (int index) {
    return Item(
      headerValue: listAllManajemen[index].title,
      expandedValue: listAllManajemen[index].isi,
      isExpanded: index == 0 ? true : false,
    );
  });
}

class _StrukturManajemen extends State<StrukturManajemen> {
  @override
  void initState() {
    super.initState();
    listAllManajemen = widget.listManajemen;
    _data = generateItems();
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
                    width: 150,
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      'Struktur Manajemen',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 50),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: ListView.builder(
                itemCount: listAllManajemen.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: const Color(0xFF02347C),
                    child: ExpansionTile(
                      initiallyExpanded: index == 0 ? true : false,
                      iconColor: Colors.white,
                      collapsedIconColor: Colors.white,
                      title: Text(
                        listAllManajemen[index].title,
                        style: const TextStyle(color: Colors.white),
                      ),
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          width: double.maxFinite,
                          color: Colors.white,
                          child: Text(
                            listAllManajemen[index].isi,
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
