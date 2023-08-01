import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/struktur_manajemen/direksi.dart';
import 'package:ldkpi_news_app/components/struktur_manajemen/kadiv.dart';
import 'package:ldkpi_news_app/components/struktur_manajemen/pemeriksa.dart';
import 'package:ldkpi_news_app/components/struktur_manajemen/pengarah.dart';
import 'package:ldkpi_news_app/components/struktur_manajemen/pengawas.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/models/struktur_manajemen_model.dart';

class StrukturManajemen extends StatefulWidget {
  const StrukturManajemen({super.key});

  @override
  State<StrukturManajemen> createState() => _StrukturManajemen();
}

List<StrukturManajemenModel> listAllManajemen = [];

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
  return const Text('Data not found');
}

class _StrukturManajemen extends State<StrukturManajemen> {
  int currentIndex = 0;
  List<StrukturManajemenModel> manajemen = [];
  late Future<List<StrukturManajemenModel>> futureManajemen = Future.delayed(
    const Duration(milliseconds: 1000),
    () => manajemen,
  );

  @override
  void initState() {
    super.initState();
    koneksi.fetchManagement().then((response) {
      manajemen = response;
    });
  }

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
              decoration: const BoxDecoration(
                color: Color(0xFF02347C),
                image: DecorationImage(
                  image: AssetImage('assets/assets/images/doodle.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  const TombolKembali(),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 25, 15, 10),
                        child: Text(
                          AppLocalizations.of(context)!.struktur_manajemen,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 35),
                ],
              ),
            ),
            FutureBuilder(
              future: futureManajemen,
              builder: (BuildContext context,
                  AsyncSnapshot<List<StrukturManajemenModel>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CupertinoActivityIndicator();
                } else if (snapshot.data!.isNotEmpty) {
                  listAllManajemen = snapshot.data!;
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    key: Key('builder ${currentIndex.toString()}'),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
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
                  );
                } else {
                  return const Center(
                    child: Text('Data Not Found'),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
