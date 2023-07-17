import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/Informasi_pengadaan.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/nilai_&_budaya.dart';
import 'package:ldkpi_news_app/penerima_hibah.dart';
import 'package:ldkpi_news_app/peraturan.dart';
import 'package:ldkpi_news_app/proses_bisnis_page.dart';
import 'package:ldkpi_news_app/struktur_manajemen_page.dart';
import 'package:ldkpi_news_app/struktur_organisasi.dart';
import 'package:ldkpi_news_app/survei_layanan.dart';
import 'package:ldkpi_news_app/visi_&_misi.dart';

import 'investasi.dart';
import 'pemberian_hibah.dart';
import 'sejarah.dart';

class Kategori extends StatefulWidget {
  const Kategori({super.key});

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  final _controllerSearch = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Positioned(
            top: 0,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xFF02347C),
                    image: DecorationImage(
                      image: AssetImage('assets/assets/images/kemenkeu.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Kategori',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 24,
            top: 128.5,
            child: Container(
              width: 334,
              height: 255,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(35, 20, 0, 19.5),
                      width: double.infinity,
                      child: Text(
                        'Layanan',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Gotham',
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 155,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            koneksi.fetchInvest().then((response) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Investasi(
                                          invest: response,
                                        )),
                              );
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 34, 0),
                            padding: EdgeInsets.fromLTRB(31, 28, 31, 27),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x0c000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(14, 0, 14, 21),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Image.asset(
                                          'assets/assets/images/Giving.jpg',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      constraints: BoxConstraints(maxWidth: 88),
                                      child: Text(
                                        'Investasi',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Gotham',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 0.5,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            koneksi.fetchPemberiHibah().then((response) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PH(
                                          konten: response,
                                        )),
                              );
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(29, 28, 25, 2.5),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(16, 0, 20, 4.5),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Image.asset(
                                          'assets/assets/images/Investment.jpg',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      constraints: BoxConstraints(maxWidth: 96),
                                      child: Text(
                                        'Pemberian\nHibah',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Gotham',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 128.5,
            child: Container(
              width: 334,
              height: 625,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(35, 20, 0, 19.5),
                      width: double.infinity,
                      child: Text(
                        'Profil',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Gotham',
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 155,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            koneksi.fetchSejarah().then((response) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sejarah(
                                          konten: response,
                                        )),
                              );
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 34, 0),
                            padding: EdgeInsets.fromLTRB(31, 28, 31, 27),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x0c000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(14, 0, 14, 21),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                          Icons.history,
                                          color: Colors.black,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      constraints: BoxConstraints(maxWidth: 88),
                                      child: Text(
                                        'Sejarah',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Gotham',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 0.5,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            koneksi.fetchPenerimaHibah().then((response) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PenerimaH(
                                          konten: response,
                                        )),
                              );
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(29, 32, 25, 2.5),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(16, 0, 20, 4.5),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                          Icons.money_sharp,
                                          color: Colors.black,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      constraints: BoxConstraints(maxWidth: 96),
                                      child: Text(
                                        'Penerima\nHibah',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Gotham',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2575,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 155,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            koneksi.fetchNilaiBudaya().then((response) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NilaiBudaya(
                                          konten: response,
                                        )),
                              );
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 34, 0),
                            padding: EdgeInsets.fromLTRB(31, 24, 31, 5),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x0c000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(14, 0, 14, 12),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                          Icons.history,
                                          color: Colors.black,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxWidth: 100, maxHeight: 100),
                                      child: Text(
                                        'Nilai &\nBudaya',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Gotham',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            koneksi.fetchOrganisasi().then((response) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StrukturOrg(
                                          konten: response,
                                        )),
                              );
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(29, 24, 25, 2.5),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(16, 0, 20, 13),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                          Icons.account_tree,
                                          color: Colors.black,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      constraints: BoxConstraints(maxWidth: 96),
                                      child: Text(
                                        'Struktur\nOrganisasi',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Gotham',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 155,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            koneksi.fetchManagement().then((response) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StrukturManajemen(
                                          listManajemen: response,
                                        )),
                              );
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 34, 0),
                            padding: EdgeInsets.fromLTRB(31, 15, 31, 27),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x0c000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(14, 0, 14, 21),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                          Icons.account_tree,
                                          color: Colors.black,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      constraints:
                                          BoxConstraints(maxWidth: 100),
                                      child: Text(
                                        'Struktur\nManajemen',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Gotham',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          // onTap: () {
                          //   koneksi.fetch().then((response) {
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => TugasFungsi(
                          //                 konten: response,
                          //               )),
                          //     );
                          //   });
                          // },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(29, 10, 25, 2.5),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(16, 0, 20, 18),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 15, 10, 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                          Icons.add_business,
                                          color: Colors.black,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      constraints: BoxConstraints(maxWidth: 96),
                                      child: Text(
                                        'Tugas &\nFungsi',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Gotham',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2575,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 128.5,
            child: Container(
              width: 334,
              height: 775,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(35, 10, 0, 19.5),
                      width: double.infinity,
                      child: Text(
                        'Informasi',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Gotham',
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 155,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            koneksi.fetchProcess().then((response) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProsesBisnis(
                                          listProsesBisnis: response,
                                        )),
                              );
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 34, 0),
                            padding: EdgeInsets.fromLTRB(31, 15, 31, 27),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x0c000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(14, 0, 14, 21),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                          Icons.change_circle_outlined,
                                          color: Colors.black,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxWidth: 88, maxHeight: 100),
                                      child: Text(
                                        'Proses\nBisnis',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Gotham',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            koneksi.fetchVisiMisi().then((response) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VisiMisi(
                                          konten: response,
                                        )),
                              );
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(29, 20, 25, 2.5),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(16, 0, 20, 14.5),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                          Icons.business_outlined,
                                          color: Colors.black,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      constraints: BoxConstraints(maxWidth: 96),
                                      child: Text(
                                        'Visi &\nMisi',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Gotham',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 155,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            koneksi.fetchPeraturan().then((response) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Peraturan(
                                          konten: response,
                                        )),
                              );
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 34, 0),
                            padding: EdgeInsets.fromLTRB(31, 30, 31, 27),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x0c000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(14, 0, 14, 21),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                          Icons.rule,
                                          color: Colors.black,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      constraints: BoxConstraints(maxWidth: 88),
                                      child: Text(
                                        'Peraturan',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Gotham',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            koneksi.fetchPengadaan().then((response) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InformasiP()),
                              );
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(29, 32, 25, 2.5),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(16, 0, 20, 14.5),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                          Icons.info_outline,
                                          color: Colors.black,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      constraints: BoxConstraints(maxWidth: 96),
                                      child: Text(
                                        'Informasi\nPengadaan',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Gotham',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 155,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            koneksi.fetchSurvei().then((response) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SurveiLayanan(
                                          konten: response,
                                        )),
                              );
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 34, 0),
                            padding: EdgeInsets.fromLTRB(31, 15, 31, 27),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x0c000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(14, 0, 14, 21),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                          Icons.design_services_outlined,
                                          color: Colors.black,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      constraints: BoxConstraints(maxWidth: 88),
                                      child: Text(
                                        'Survey Layanan',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Gotham',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          // onTap: () {
                          //   koneksi.fetch().then((response) {
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => CallUs(
                          //                 konten: response,
                          //               )),
                          //     );
                          //   });
                          // },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(29, 20, 25, 2.5),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(16, 0, 20, 14.5),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                          Icons.call_end,
                                          color: Colors.black,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      constraints: BoxConstraints(maxWidth: 96),
                                      child: Text(
                                        'Hubungi\nKami',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Gotham',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    height: 155,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          // onTap: () {
                          //   koneksi.fetch().then((response) {
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => FAQ(
                          //                 konten: response,
                          //               )),
                          //     );
                          //   });
                          // },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 34, 0),
                            padding: EdgeInsets.fromLTRB(31, 30, 31, 27),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x0c000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(14, 0, 14, 21),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0, 4),
                                          blurRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                          Icons.question_answer,
                                          color: Colors.black,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      constraints: BoxConstraints(maxWidth: 88),
                                      child: Text(
                                        'FAQ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Gotham',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}