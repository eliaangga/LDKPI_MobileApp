import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/components/kontainer_negara.dart';
import 'package:ldkpi_news_app/models/penerima_hibah_model.dart';
import 'package:ldkpi_news_app/models/tahun_model.dart';

class PenerimaH extends StatefulWidget {
  PenerimaHibahModel konten;
  PenerimaH({Key? key, required this.konten}) : super(key: key);

  @override
  State<PenerimaH> createState() => _PenerimaHState();
}

class _PenerimaHState extends State<PenerimaH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 70,
              color: const Color(0xFF02347C),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 61,
                        height: 18,
                        decoration: BoxDecoration(
                          color: const Color(0xff02275c),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Center(
                          child: Text(
                            '< Kembali',
                            style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 8,
                              fontWeight: FontWeight.w700,
                              height: 1.25,
                              color: Color(0xffffffff),
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 150,
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        'Penerima Hibah',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 80),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.all(10.0), // Add your desired padding value here
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 10,
                child: Image(image: NetworkImage(widget.konten.gambarPenerima)),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.konten.listTahun.length,
              itemBuilder: (context, index) {
                TahunModel tahun = widget.konten.listTahun[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        child: Center(child: Text(tahun.tahun))),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: (tahun.listNegara.length / 4).ceil(),
                      itemBuilder: (context, index) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            KontainerNegara(
                                nama: tahun.listNegara[(index * 4)].nama,
                                gambar: tahun.listNegara[(index * 4)].gambar),
                            if ((index * 4) + 1 < tahun.listNegara.length)
                              KontainerNegara(
                                  nama: tahun.listNegara[(index * 4) + 1].nama,
                                  gambar:
                                      tahun.listNegara[(index * 4) + 1].gambar),
                            if ((index * 4) + 2 < tahun.listNegara.length)
                              KontainerNegara(
                                  nama: tahun.listNegara[(index * 4) + 2].nama,
                                  gambar:
                                      tahun.listNegara[(index * 4) + 2].gambar),
                            if ((index * 4) + 3 < tahun.listNegara.length)
                              KontainerNegara(
                                  nama: tahun.listNegara[(index * 4) + 3].nama,
                                  gambar:
                                      tahun.listNegara[(index * 4) + 3].gambar),
                          ],
                        );
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      height: 1,
                      width: MediaQuery.of(context).size.width - 100,
                      color: Colors.black,
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
