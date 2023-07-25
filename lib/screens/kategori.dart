import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/screens/faq.dart';
import 'package:ldkpi_news_app/screens/informasi_pengadaan.dart';
import 'package:ldkpi_news_app/screens/nilai_&_budaya.dart';
import 'package:ldkpi_news_app/screens/penerima_hibah.dart';
import 'package:ldkpi_news_app/screens/peraturan.dart';
import 'package:ldkpi_news_app/screens/proses_bisnis_page.dart';
import 'package:ldkpi_news_app/screens/struktur_manajemen_page.dart';
import 'package:ldkpi_news_app/screens/struktur_organisasi.dart';
import 'package:ldkpi_news_app/screens/support_center.dart';
import 'package:ldkpi_news_app/screens/survei_layanan.dart';
import 'package:ldkpi_news_app/screens/tugas_&_fungsi.dart';
import 'package:ldkpi_news_app/screens/visi_&_misi.dart';

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
                  height: 140,
                  decoration: BoxDecoration(
                    color: const Color(0xFF02347C),
                    image: DecorationImage(
                      image: AssetImage('assets/assets/images/kemenkeu.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.kategori,
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
                        AppLocalizations.of(context)!.layanan,
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
                                        AppLocalizations.of(context)!.investasi,
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
                                        AppLocalizations.of(context)!
                                            .pemberian_hibah,
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
                        AppLocalizations.of(context)!.profil,
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
                                        AppLocalizations.of(context)!.sejarah,
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
                                        AppLocalizations.of(context)!
                                            .penerima_hibah,
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
                                        AppLocalizations.of(context)!
                                            .nilai_budaya,
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
                                        AppLocalizations.of(context)!
                                            .struktur_organisasi,
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
                                        AppLocalizations.of(context)!
                                            .struktur_manajemen,
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
                            koneksi.fetchTugasFungsi().then((response) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TugasFungsi(
                                    model: response,
                                  ),
                                ),
                              );
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(29, 10, 25, 2.5),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
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
                                        AppLocalizations.of(context)!
                                            .tugas_fungsi,
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
                        AppLocalizations.of(context)!.informasi,
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
                                          model: response,
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
                                        AppLocalizations.of(context)!
                                            .proses_bisnis,
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
                                        AppLocalizations.of(context)!.visi_misi,
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
                                        AppLocalizations.of(context)!.peraturan,
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
                                        AppLocalizations.of(context)!
                                            .informasi_pengadaan,
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
                                        AppLocalizations.of(context)!.survei,
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CallUs(),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(29, 20, 25, 2.5),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
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
                                        AppLocalizations.of(context)!.hubungi,
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FAQ(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 34, 0),
                            padding: EdgeInsets.fromLTRB(31, 30, 31, 27),
                            width: 150,
                            height: double.infinity,
                            decoration: BoxDecoration(
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
                                        AppLocalizations.of(context)!.faq,
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
