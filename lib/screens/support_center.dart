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
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: screenHeight * 0.2,
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
                    width: screenWidth * 0.04,
                  ),
                  const TombolKembali(),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.01,
                            screenHeight * 0.06,
                            screenWidth * 0.03,
                            screenHeight * 0.04),
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
                    width: screenWidth * 0.45,
                    height: screenHeight * 0.035,
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
              height: screenHeight * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Positioned(
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.2,
                  child: Stack(
                    children: [
                      Positioned(
                        left: screenWidth * 0.05,
                        top: screenHeight * 0.02,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(screenWidth * 0.25,
                              screenHeight * 0.009, screenWidth * 0.25, 0),
                          width: screenWidth * 0.9,
                          height: screenHeight * 0.17,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff000000)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: screenWidth * 0.0025,
                              height: screenHeight * 0.162,
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
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              screenWidth * 0.035,
                              screenHeight * 0.0005,
                              screenWidth * 0.0005,
                              screenHeight * 0.0005),
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 0.075, 0, screenWidth * 0.035, 0),
                          width: screenWidth * 0.9,
                          height: screenHeight * 0.032,
                          decoration: BoxDecoration(
                            color: Color(0xff02347c),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 0,
                                      screenWidth * 0.04, screenHeight * 0.001),
                                  padding: EdgeInsets.fromLTRB(
                                      screenWidth * 0.1,
                                      0,
                                      screenWidth * 0.05,
                                      0),
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
                                margin: EdgeInsets.fromLTRB(
                                    screenWidth * 0.0275, 0, 0, 0),
                                width: screenWidth * 0.0005,
                                height: screenHeight * 0.032,
                                decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Center(
                                child: Container(
                                  width: screenWidth * 0.18,
                                  margin: EdgeInsets.fromLTRB(
                                      0, 0, 0, screenHeight * 0.001),
                                  padding: EdgeInsets.fromLTRB(
                                      screenWidth * 0.075,
                                      0,
                                      screenWidth * 0.0375,
                                      0),
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
                        left: screenWidth * 0.04,
                        top: screenHeight * 0.055,
                        child: Container(
                          width: screenWidth * 0.9,
                          height: screenHeight * 0.03,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Lembaga',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Lembaga Dana Kerja Sama Pembangunan Internasional',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
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
                        left: screenWidth * 0.04,
                        top: screenHeight * 0.095,
                        child: Container(
                          width: screenWidth * 0.9,
                          height: screenHeight * 0.03,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Gedung',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Gedung Sutikno Slamet Lt. 19',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
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
                        left: screenWidth * 0.04,
                        top: screenHeight * 0.13,
                        child: Container(
                          width: screenWidth * 0.9,
                          height: screenHeight * 0.03,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Alamat',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Jl. Dr. Wahidin Raya No.1 Jakarta Pusat, DKI Jakarta 10710',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
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
                        left: screenWidth * 0.04,
                        top: screenHeight * 0.165,
                        child: Container(
                          width: screenWidth * 0.9,
                          height: screenHeight * 0.03,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Telepon',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    '(021) 3510725',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
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
                        left: screenWidth * 0.04,
                        top: screenHeight * 0.2,
                        child: Container(
                          width: screenWidth * 0.9,
                          height: screenHeight * 0.03,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'E-mail',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'ldkpi@kemenkeu.go.id',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Gotham',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
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
