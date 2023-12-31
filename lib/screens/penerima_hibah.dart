import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/kontainer_negara.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/models/penerima_hibah_model.dart';

class PenerimaHibah extends StatefulWidget {
  const PenerimaHibah({Key? key}) : super(key: key);

  @override
  State<PenerimaHibah> createState() => _PenerimaHibahState();
}

class _PenerimaHibahState extends State<PenerimaHibah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                        padding: const EdgeInsets.fromLTRB(5, 25, 10, 10),
                        child: Text(
                          AppLocalizations.of(context)!.penerima_hibah,
                          style: const TextStyle(
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
            FutureBuilder(
              future: koneksi.fetchPenerimaHibah(),
              builder: (BuildContext context,
                  AsyncSnapshot<PenerimaHibahModel> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CupertinoActivityIndicator();
                } else if (snapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 10,
                      child: Image(
                          image: NetworkImage(snapshot.data!.gambarPenerima)),
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
            FutureBuilder(
              future: koneksi.fetchPenerimaHibah(),
              builder: (BuildContext context,
                  AsyncSnapshot<PenerimaHibahModel> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CupertinoActivityIndicator();
                } else if (snapshot.hasData) {
                  List<Widget> getListTahun = [];
                  for (var tahun in snapshot.data!.listTahun) {
                    getListTahun.add(Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          child: Center(child: Text(tahun.tahun)),
                        ),
                        for (var index = 0;
                            index < (tahun.listNegara.length / 4).ceil();
                            index++)
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              KontainerNegara(
                                  model: tahun.listNegara[(index * 4)]),
                              if ((index * 4) + 1 < tahun.listNegara.length)
                                KontainerNegara(
                                    model: tahun.listNegara[(index * 4) + 1]),
                              if ((index * 4) + 2 < tahun.listNegara.length)
                                KontainerNegara(
                                    model: tahun.listNegara[(index * 4) + 2]),
                              if ((index * 4) + 3 < tahun.listNegara.length)
                                KontainerNegara(
                                    model: tahun.listNegara[(index * 4) + 3]),
                            ],
                          ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          height: 1,
                          width: MediaQuery.of(context).size.width - 100,
                          color: Colors.black,
                        )
                      ],
                    ));
                  }
                  return Column(children: getListTahun);
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
