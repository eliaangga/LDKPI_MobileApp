import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/kategori/tombol_faq.dart';
import 'package:ldkpi_news_app/components/kategori/tombol_hubungi.dart';
import 'package:ldkpi_news_app/components/kategori/tombol_informasi_pengadaan.dart';
import 'package:ldkpi_news_app/components/kategori/tombol_nilai_budaya.dart';
import 'package:ldkpi_news_app/components/kategori/tombol_penerima_hibah.dart';
import 'package:ldkpi_news_app/components/kategori/tombol_peraturan.dart';
import 'package:ldkpi_news_app/components/kategori/tombol_proses_bisnis.dart';
import 'package:ldkpi_news_app/components/kategori/tombol_sejarah.dart';
import 'package:ldkpi_news_app/components/kategori/tombol_struktur_manajemen.dart';
import 'package:ldkpi_news_app/components/kategori/tombol_struktur_organisasi.dart';
import 'package:ldkpi_news_app/components/kategori/tombol_survei.dart';
import 'package:ldkpi_news_app/components/kategori/tombol_tugas_fungsi.dart';
import 'package:ldkpi_news_app/components/kategori/tombol_visi_misi.dart';
import 'package:ldkpi_news_app/screens/pemberian_hibah.dart';

import 'investasi.dart';

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
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color(0xFF02347C),
                    image: DecorationImage(
                      image: AssetImage('assets/assets/images/doodle.png'),
                      fit: BoxFit.fitWidth,
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
                      margin: const EdgeInsets.fromLTRB(35, 20, 0, 19.5),
                      width: double.infinity,
                      child: Text(
                        AppLocalizations.of(context)!.pemberian_hibah,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
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
                                    builder: (context) => const Investasi()),
                              );
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              padding: const EdgeInsets.fromLTRB(19, 10, 19, 0),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      width: 90,
                                      height: 90,
                                      child: Image.asset(
                                          'assets/assets/images/Investment.jpg'),
                                    ),
                                    Center(
                                      child: Text(
                                        AppLocalizations.of(context)!.investasi,
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
                                    builder: (context) =>
                                        const PemberianHibah()),
                              );
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              padding: const EdgeInsets.fromLTRB(19, 10, 19, 0),
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                      margin: const EdgeInsets.fromLTRB(35, 20, 0, 19.5),
                      width: double.infinity,
                      child: Text(
                        AppLocalizations.of(context)!.profil,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
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
                    margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
                    width: double.infinity,
                    height: 145,
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        TombolSejarah(),
                        TombolPenerimaHibah(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
                    width: double.infinity,
                    height: 155,
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        TombolNilaiBudaya(),
                        TombolStrukturOrganisasi(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
                    width: double.infinity,
                    height: 155,
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        TombolStrukturManajemen(),
                        TombolTugasFungsi(),
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
              height: 805,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(35, 10, 0, 19.5),
                      width: double.infinity,
                      child: Text(
                        AppLocalizations.of(context)!.informasi,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
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
                    margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
                    width: double.infinity,
                    height: 155,
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        TombolProsesBisnis(),
                        TombolVisiMisi(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
                    width: double.infinity,
                    height: 155,
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        TombolPeraturan(),
                        TombolInformasiPengadaan(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
                    width: double.infinity,
                    height: 155,
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        TombolSurvei(),
                        TombolHubungi(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 11, 20),
                    width: double.infinity,
                    height: 155,
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        TombolFaq(),
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
