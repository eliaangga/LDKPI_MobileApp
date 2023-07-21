import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/components/pengarah.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/models/struktur_manajemen_model.dart';

class StrukturManajemen extends StatefulWidget {
  StrukturManajemen({super.key, required this.listManajemen});

  List<StrukturManajemenModel> listManajemen;
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

List<StrukturManajemenModel> listAllManajemen = [];

List<Item> generateItems() {
  return List<Item>.generate(listAllManajemen.length, (int index) {
    return Item(
      headerValue: listAllManajemen[index].tingkat,
      expandedValue: listAllManajemen[index].listAnggota[0].nama,
      isExpanded: index == 0 ? true : false,
    );
  });
}

class _StrukturManajemen extends State<StrukturManajemen> {
  int currentIndex = 0;
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
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 95,
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
                          'Struktur Manajemen',
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
                  const SizedBox(width: 35),
                ],
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              key: Key('builder ${currentIndex.toString()}'),
              itemCount: listAllManajemen.length,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: const Color(0xFF02347C),
                  child: ExpansionTile(
                    key: Key(index.toString()),
                    initiallyExpanded: index == currentIndex,
                    onExpansionChanged: (bool expanded) {
                      setState(() {
                        currentIndex = expanded ? index : -1;
                      });
                    },
                    iconColor: Colors.white,
                    collapsedIconColor: Colors.white,
                    title: Text(
                      listAllManajemen[index].tingkat,
                      style: const TextStyle(color: Colors.white),
                    ),
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        width: double.maxFinite,
                        color: Colors.white,
                        child:
                            // ListView.builder(
                            //   itemCount: 3,
                            //   itemBuilder: (context, subIndex) => Text(
                            //     listAllManajemen[subIndex].listAnggota[0].nama,
                            //   ),
                            // // )
                            //     Text(
                            //   listAllManajemen[index].listAnggota[0].nama,
                            // ),
                            Pengarah(model: listAllManajemen[index]),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
