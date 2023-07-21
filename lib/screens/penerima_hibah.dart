import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/components/kontainer_negara.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/models/penerima_hibah_model.dart';

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
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 95,
              color: const Color(0xFF02347C),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  const TombolKembali(),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 25, 10, 10),
                        child: Text(
                          'Penerima Hibah',
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
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 10,
                child: Image(image: NetworkImage(widget.konten.gambarPenerima)),
              ),
            ),
            for (var tahun in widget.konten.listTahun)
              Column(
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
                            nama: tahun.listNegara[(index * 4)].nama,
                            gambar: tahun.listNegara[(index * 4)].gambar),
                        if ((index * 4) + 1 < tahun.listNegara.length)
                          KontainerNegara(
                              nama: tahun.listNegara[(index * 4) + 1].nama,
                              gambar: tahun.listNegara[(index * 4) + 1].gambar),
                        if ((index * 4) + 2 < tahun.listNegara.length)
                          KontainerNegara(
                              nama: tahun.listNegara[(index * 4) + 2].nama,
                              gambar: tahun.listNegara[(index * 4) + 2].gambar),
                        if ((index * 4) + 3 < tahun.listNegara.length)
                          KontainerNegara(
                              nama: tahun.listNegara[(index * 4) + 3].nama,
                              gambar: tahun.listNegara[(index * 4) + 3].gambar),
                      ],
                    ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    height: 1,
                    width: MediaQuery.of(context).size.width - 100,
                    color: Colors.black,
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}
