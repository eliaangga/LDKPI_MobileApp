import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/struktur_manajemen/direksi.dart';
import 'package:ldkpi_news_app/components/struktur_manajemen/kadiv.dart';
import 'package:ldkpi_news_app/components/struktur_manajemen/pemeriksa.dart';
import 'package:ldkpi_news_app/components/struktur_manajemen/pengarah.dart';
import 'package:ldkpi_news_app/components/struktur_manajemen/pengawas.dart';
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

Widget showComponent(int index) {
  if (index == 0) {
    return Pengarah(model: listAllManajemen[index].listAnggota);
  } else if (index == 1) {
    return Pengawas(
      model: listAllManajemen[index].listAnggota,
    );
  } else if (index == 2) {
    return Direksi(
      model: listAllManajemen[index].listAnggota,
    );
  } else if (index == 3) {
    return Pemeriksa(
      model: listAllManajemen[index].listAnggota,
    );
  } else if (index == 4) {
    return Kadiv(
      model: listAllManajemen[index].listAnggota,
    );
  }
  return Text('Data not found');
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
              height: 135,
              decoration: BoxDecoration(
                color: const Color(0xFF02347C),
                image: DecorationImage(
                  image: AssetImage('assets/assets/images/kemenkeu.png'),
                  fit: BoxFit.cover,
                ),
              ),
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
                          AppLocalizations.of(context)!.struktur_manajemen,
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
                        child: showComponent(index),
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
