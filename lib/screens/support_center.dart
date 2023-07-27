import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';

class CallUs extends StatefulWidget {
  const CallUs({Key? key}) : super(key: key);

  @override
  _CallUsState createState() => _CallUsState();
}

class _CallUsState extends State<CallUs> {
  final TextEditingController _controllerSearch = TextEditingController();
  late List<String> _listCallUs;

  @override
  void initState() {
    super.initState();
    _listCallUs = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 100,
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
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 30, 30, 20),
                      child: Text(
                        'Hubungi Kami',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(width: 55),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 164,
                    sigmaY: 164,
                  ),
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0x33ffffff),
                      borderRadius: BorderRadius.circular(130),
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
            const SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Deskripsi')),
                  DataColumn(label: Text('Keterangan')),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Container(width: 100, child: Text('Lembaga'))),
                      DataCell(Container(
                          width: 300,
                          child: const Text(
                              'Lembaga Dana Kerja Sama Pembangunan Internasional'))),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Container(width: 100, child: Text('Gedung'))),
                      DataCell(Container(
                          width: 300,
                          child: Text('Gedung Sutikno Slamet Lt. 19'))),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Container(
                          width: 100,
                          child: Text(
                            'Alamat',
                          ),
                        ),
                      ),
                      DataCell(
                        Container(
                          width: 300,
                          child: Text(
                            'Jl. Dr. Wahidin Raya No.1 Jakarta Pusat, DKI Jakarta 10710',
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Container(
                          width: 100,
                          child: Text(
                            'Telepon',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      const DataCell(
                        SizedBox(
                          width: 300,
                          child: Text(
                            '(021) 3510725',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Container(
                          width: 100,
                          child: Text(
                            'E-mail',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      DataCell(
                        Container(
                          width: 300,
                          child: Text(
                            'ldkpi@kemenkeu.go.id',
                            style: TextStyle(color: Colors.black),
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
    );
  }
}
