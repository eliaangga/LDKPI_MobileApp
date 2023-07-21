import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/models/informasi_pengadaan_model.dart';

class InformasiP extends StatefulWidget {
  const InformasiP({Key? key}) : super(key: key);

  @override
  _InformasiPState createState() => _InformasiPState();
}

class _InformasiPState extends State<InformasiP> {
  var pengadaan = InformasiPengadaanModel();

  @override
  void initState() {
    super.initState();
    koneksi.fetchPengadaan().then((response) {
      setState(() {
        pengadaan = response;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
                          'Informasi Pengadaan',
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
                  const SizedBox(width: 20),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 844,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(31, 15, 30, 9.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 0,
                              left: 25,
                              bottom: 0,
                              right: 25,
                            ),
                            child: pengadaan.konten == ''
                                ? const Center(
                                    child: Text('Data Not Found'),
                                  )
                                : Html(
                                    data: pengadaan.konten,
                                    style: {
                                      'html': Style(
                                        fontFamily: 'Gotham',
                                        textAlign: TextAlign.justify,
                                        fontSize: FontSize(9),
                                        fontWeight: FontWeight.w400,
                                        lineHeight: LineHeight(1.1111111111),
                                        color: Color(0xff000000),
                                      ),
                                    },
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
