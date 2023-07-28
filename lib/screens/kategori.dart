import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/screens/faq.dart';
import 'package:ldkpi_news_app/screens/nilai_&_budaya.dart';
import 'package:ldkpi_news_app/screens/pemberian_hibah.dart';
import 'package:ldkpi_news_app/screens/penerima_hibah.dart';
import 'package:ldkpi_news_app/screens/sejarah.dart';
import 'package:ldkpi_news_app/screens/struktur_organisasi.dart';

import 'Informasi_pengadaan.dart';
import 'investasi.dart';
import 'peraturan.dart';
import 'proses_bisnis_page.dart';
import 'struktur_manajemen_page.dart';
import 'support_center.dart';
import 'survei_layanan.dart';
import 'tugas_&_fungsi.dart';
import 'visi_&_misi.dart';

class Kategori extends StatefulWidget {
  const Kategori({super.key});

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
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
                  decoration: const BoxDecoration(
                    color: Color(0xFF02347C),
                    image: DecorationImage(
                      image: AssetImage('assets/assets/images/doodle.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.kategori,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 2,
                        fontSize: 34,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: SizedBox(
              width: 334,
              height: 260,
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
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
                      width: double.infinity,
                      height: 155,
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Investasi()),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 10, 19, 0),
                                width: 165,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        width: 90,
                                        height: 90,
                                        child: Image.asset(
                                            'assets/assets/images/Investment.jpg'),
                                      ),
                                      Center(
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .investasi,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PH()),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 10, 19, 0),
                                width: 165,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 15, 0, 0),
                                        width: 90,
                                        height: 90,
                                        child: Image.asset(
                                            'assets/assets/images/Giving.jpg'),
                                      ),
                                      Center(
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .pemberian_hibah,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
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
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
                      width: double.infinity,
                      height: 145,
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sejarah()),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 10, 19, 0),
                                width: 165,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        width: 90,
                                        height: 90,
                                        child: const SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: Icon(
                                            Icons.history,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          AppLocalizations.of(context)!.sejarah,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PenerimaH()),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 10, 19, 0),
                                width: 165,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 15, 0, 0),
                                        width: 90,
                                        height: 90,
                                        child: const SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: Icon(
                                            Icons.money_sharp,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .penerima_hibah,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
                      width: double.infinity,
                      height: 155,
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NilaiBudaya()),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 10, 19, 0),
                                width: 165,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        width: 90,
                                        height: 90,
                                        child: const SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: Icon(
                                            Icons.credit_score_outlined,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .nilai_budaya,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StrukturOrg()),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 10, 19, 0),
                                width: 165,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 15, 0, 0),
                                        width: 90,
                                        height: 90,
                                        child: const SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: Icon(
                                            Icons.groups_2_outlined,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .struktur_organisasi,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
                      width: double.infinity,
                      height: 155,
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          StrukturManajemen()),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 10, 19, 0),
                                width: 165,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        width: 90,
                                        height: 90,
                                        child: const SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: Icon(
                                            Icons.account_tree,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .struktur_manajemen,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const TugasFungsi(),
                                  ),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 10, 19, 0),
                                width: 165,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 15, 0, 0),
                                        width: 90,
                                        height: 90,
                                        child: const SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: Icon(
                                            Icons.add_business,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .tugas_fungsi,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
              height: 805,
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
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
                      width: double.infinity,
                      height: 155,
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProsesBisnis()),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 10, 19, 0),
                                width: 165,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        width: 90,
                                        height: 90,
                                        child: const SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: Icon(
                                            Icons.change_circle_outlined,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .proses_bisnis,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VisiMisi()),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 10, 19, 0),
                                width: 165,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 15, 0, 0),
                                        width: 90,
                                        height: 90,
                                        child: const SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: Icon(
                                            Icons.business_outlined,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .visi_misi,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
                      width: double.infinity,
                      height: 155,
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Peraturan()),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 10, 19, 0),
                                width: 165,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        width: 90,
                                        height: 90,
                                        child: const SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: Icon(
                                            Icons.rule,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .peraturan,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const InformasiP()),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 10, 19, 0),
                                width: 165,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 15, 0, 0),
                                        width: 90,
                                        height: 90,
                                        child: const SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: Icon(
                                            Icons.info_outline,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .informasi_pengadaan,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
                      width: double.infinity,
                      height: 155,
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SurveiLayanan()),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 10, 19, 0),
                                width: 165,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        width: 90,
                                        height: 90,
                                        child: const SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: Icon(
                                            Icons.design_services_outlined,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          AppLocalizations.of(context)!.survei,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CallUs(),
                                  ),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 10, 19, 0),
                                width: 165,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 15, 0, 0),
                                        width: 90,
                                        height: 90,
                                        child: const SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: Icon(
                                            Icons.call_end,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          AppLocalizations.of(context)!.hubungi,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
                      width: double.infinity,
                      height: 155,
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FAQ(),
                                  ),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 10, 19, 0),
                                width: 165,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0, 4),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        width: 90,
                                        height: 90,
                                        child: const SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: Icon(
                                            Icons.question_answer,
                                            color: Colors.black,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          AppLocalizations.of(context)!.faq,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontFamily: 'Gotham',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            height: 1,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
