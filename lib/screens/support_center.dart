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
              height: 135,
              decoration: BoxDecoration(
                color: const Color(0xFF02347C),
                image: DecorationImage(
                  image: AssetImage('assets/assets/images/kemenkeu.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  const TombolKembali(),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 25, 15, 10),
                        child: Text(
                          'Hubungi Kami',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 55),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 64,
                    sigmaY: 64,
                  ),
                  child: Container(
                    width: 170,
                    height: 37,
                    decoration: BoxDecoration(
                      color: Color(0x33ffffff),
                      borderRadius: BorderRadius.circular(130),
                    ),
                    child: Center(
                      child: Text(
                        'Ayok Hubungi Kami',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Gotham',
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          height: 0.9569999695,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              height: 700,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Positioned(
                child: Container(
                  width: 320,
                  height: 194,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 40,
                        top: 20,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(95, 12, 95, 0),
                          width: 317,
                          height: 174,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff000000)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 0.5,
                              height: 162,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(38, 1, 1, 1),
                          padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                          width: 320,
                          height: 32,
                          decoration: BoxDecoration(
                            color: Color(0xff02347c),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 24, 2),
                                  padding: EdgeInsets.fromLTRB(35, 1, 17.5, 1),
                                  child: Text(
                                    'Deskripsi',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      height: 1,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                width: 0.1,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Center(
                                child: Container(
                                  width: 150,
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                  padding: EdgeInsets.fromLTRB(35, 1, 17.5, 1),
                                  child: Text(
                                    'Keterangan',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      height: 1,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23,
                        top: 39,
                        child: Container(
                          width: 400,
                          height: 16,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 77, 0),
                                  padding: EdgeInsets.fromLTRB(85, 0, 10, 0),
                                  child: Text(
                                    'Lembaga',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      height: 1,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 111,
                                  ),
                                  child: Text(
                                    'Lembaga Dana Kerja Sama \nPembangunan Internasional',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
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
                      Positioned(
                        left: 25,
                        top: 76,
                        child: Container(
                          width: 400,
                          height: 10,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 77, 0),
                                  padding: EdgeInsets.fromLTRB(85, 0, 10, 0),
                                  child: Text(
                                    'Gedung',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      height: 1,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Gedung Sutikno Slamet Lt. 19 ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Gotham',
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    height: 1.25,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27,
                        top: 102,
                        child: Container(
                          width: 400,
                          height: 20,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
                                  padding: EdgeInsets.fromLTRB(85, 0, 10, 0),
                                  child: Text(
                                    'Alamat',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      height: 1,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(30, 0, 10, 0),
                                  child: Text(
                                    'Jl. Dr. Wahidin Raya No.1 Jakarta Pusat, \nDKI Jakarta 10710',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      height: 1.25,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27.5,
                        top: 130,
                        child: Container(
                          width: 400,
                          height: 14,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 77, 0),
                                  padding: EdgeInsets.fromLTRB(85, 0, 10, 0),
                                  child: Text(
                                    'Telepon',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      height: 1,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                  padding: EdgeInsets.fromLTRB(30, 0, 10, 0),
                                  child: Text(
                                    '(021) 3510725',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      height: 1.25,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 31,
                        top: 157,
                        child: Container(
                          width: 400,
                          height: 14,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 77, 0),
                                  padding: EdgeInsets.fromLTRB(80, 0, 10, 0),
                                  child: Text(
                                    'E-mail',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      height: 1,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                  padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                                  child: Text(
                                    'ldkpi@kemenkeu.go.id',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      height: 1.25,
                                      color: Color(0xff000000),
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
            ),
          ],
        ),
      ),
    );
  }
}
