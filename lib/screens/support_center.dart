import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';

class CallUs extends StatefulWidget {
  const CallUs({Key? key}) : super(key: key);

  @override
  _CallUsState createState() => _CallUsState();
}

class _CallUsState extends State<CallUs> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
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
                              AppLocalizations.of(context)!.hubungi,
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
                      const SizedBox(width: 60),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  width: 350,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DataTable(
                    headingRowColor: MaterialStateColor.resolveWith(
                      (states) => const Color(0xFF02347C),
                    ),
                    columns: [
                      DataColumn(
                        label: Text(
                          'Deskripsi',
                          style: const TextStyle(
                            fontFamily: 'Gotham',
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            height: 1,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Keterangan',
                          style: const TextStyle(
                            fontFamily: 'Gotham',
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            height: 1,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                    rows: [
                      const DataRow(
                        cells: [
                          DataCell(SizedBox(
                              width: 100,
                              child: Text(
                                'Lembaga',
                                style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                  color: Color(0xff000000),
                                ),
                              ))),
                          DataCell(
                            SizedBox(
                              width: 200,
                              child: Text(
                                'Lembaga Dana Kerja Sama Pembangunan Internasional',
                                style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const DataRow(
                        cells: [
                          DataCell(SizedBox(
                              width: 100,
                              child: Text(
                                'Gedung',
                                style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                  color: Color(0xff000000),
                                ),
                              ))),
                          DataCell(
                            SizedBox(
                              width: 150,
                              child: Text(
                                'Gedung Sutikno Slamet Lt. 19',
                                style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const DataRow(
                        cells: [
                          DataCell(SizedBox(
                              width: 100,
                              child: Text(
                                'Alamat',
                                style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                  color: Color(0xff000000),
                                ),
                              ))),
                          DataCell(
                            SizedBox(
                              width: 150,
                              child: Text(
                                'Jl. Dr. Wahidin Raya No.1 Jakarta Pusat, DKI Jakarta 10710',
                                style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const DataRow(
                        cells: [
                          DataCell(
                            SizedBox(
                              width: 100,
                              child: Text(
                                'Telepon',
                                style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                          DataCell(
                            SizedBox(
                              width: 300,
                              child: Text(
                                '(021) 3510725',
                                style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const DataRow(
                        cells: [
                          DataCell(
                            SizedBox(
                              width: 100,
                              child: Text(
                                'E-mail',
                                style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                          DataCell(
                            SizedBox(
                              width: 300,
                              child: Text(
                                'ldkpi@kemenkeu.go.id',
                                style: TextStyle(
                                  fontFamily: 'Gotham',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.32,
            top: 110,
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 164,
                    sigmaY: 164,
                  ),
                  child: Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0x33ffffff),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Center(
                      child: Text(
                        'Ayok Hubungi Kami',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Gotham',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 0.957,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
