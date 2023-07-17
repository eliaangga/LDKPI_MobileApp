import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/component/kontainer_negara.dart';
import 'package:ldkpi_news_app/model/penerima_hibah_model.dart';
import 'package:ldkpi_news_app/model/tahun_model.dart';

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
        physics: const ScrollPhysics(),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 70,
              color: const Color(0xFF02347C),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 55, 0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 61,
                        height: 18,
                        decoration: BoxDecoration(
                          color: const Color(0xff02275c),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Center(
                          child: Text(
                            '< Kembali',
                            style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 8,
                              fontWeight: FontWeight.w700,
                              height: 1.25,
                              color: Color(0xffffffff),
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: const Text(
                        'Penerima Hibah',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 115),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: Image(image: NetworkImage(widget.konten.gambarPenerima)),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.konten.listTahun.length,
              itemBuilder: (context, index) {
                TahunModel tahun = widget.konten.listTahun[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Center(child: Text(tahun.tahun))),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: (tahun.listNegara.length / 4).ceil(),
                      itemBuilder: (context, index) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            KontainerNegara(
                                nama: tahun.listNegara[(index * 4)].nama,
                                gambar: tahun.listNegara[(index * 4)].gambar),
                            if ((index * 4) + 1 < tahun.listNegara.length)
                              KontainerNegara(
                                  nama: tahun.listNegara[(index * 4) + 1].nama,
                                  gambar:
                                      tahun.listNegara[(index * 4) + 1].gambar),
                            if ((index * 4) + 2 < tahun.listNegara.length)
                              KontainerNegara(
                                  nama: tahun.listNegara[(index * 4) + 2].nama,
                                  gambar:
                                      tahun.listNegara[(index * 4) + 2].gambar),
                            if ((index * 4) + 3 < tahun.listNegara.length)
                              KontainerNegara(
                                  nama: tahun.listNegara[(index * 4) + 3].nama,
                                  gambar:
                                      tahun.listNegara[(index * 4) + 3].gambar),
                          ],
                        );
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      height: 1,
                      width: MediaQuery.of(context).size.width - 100,
                      color: Colors.black,
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
    // Scaffold(
    //   body: ListView(
    //     children: <Widget>[
    //       Container(
    //         width: double.infinity,
    //         height: 70,
    //         color: const Color(0xFF02347C),
    //         child: Row(
    //           children: [
    //             SizedBox(width: 20),
    //             Container(
    //               margin: EdgeInsets.fromLTRB(0, 0, 55, 0),
    //               child: TextButton(
    //                 onPressed: () {
    //                   Navigator.pop(context);
    //                 },
    //                 style: TextButton.styleFrom(
    //                   padding: EdgeInsets.zero,
    //                 ),
    //                 child: Container(
    //                   width: 61,
    //                   height: 18,
    //                   decoration: BoxDecoration(
    //                     color: Color(0xff02275c),
    //                     borderRadius: BorderRadius.circular(3),
    //                   ),
    //                   child: Center(
    //                     child: Text(
    //                       '< Kembali',
    //                       style: TextStyle(
    //                         fontFamily: 'Gotham',
    //                         fontSize: 8,
    //                         fontWeight: FontWeight.w700,
    //                         height: 1.25,
    //                         color: Color(0xffffffff),
    //                         letterSpacing: 0.5,
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             Expanded(
    //               child: Container(
    //                 width: double.infinity,
    //                 alignment: Alignment.center,
    //                 child: Text(
    //                   'Penerima Hibah',
    //                   style: TextStyle(
    //                     color: Colors.white,
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 24,
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             SizedBox(width: 115),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         width: double.infinity,
    //         height: 844,
    //         decoration: BoxDecoration(
    //           color: Colors.white,
    //           borderRadius: BorderRadius.circular(15),
    //         ),
    //         child: Column(
    //           children: [
    //             Expanded(
    //               child: Container(
    //                 padding: EdgeInsets.fromLTRB(31, 15, 30, 9.5),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   children: [
    //                     Container(
    //                       margin: EdgeInsets.only(bottom: 5),
    //                       width: MediaQuery.of(context).size.width - 50,
    //                       decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(5),
    //                       ),
    //                       child: Align(
    //                         alignment: Alignment.center,
    //                         child: SizedBox(
    //                           width: MediaQuery.of(context).size.width - 50,
    //                           child: Image(
    //                               image: NetworkImage(
    //                                   widget.konten.gambarPenerima)),
    //                         ),
    //                       ),
    //                     ),
    //                     // Container(
    //                     //     child: Center(
    //                     //         child: Text(widget.konten.listTahun[0].tahun))),
    //                     Expanded(
    //                         child: ListView.builder(
    //                       physics: const NeverScrollableScrollPhysics(),
    //                       shrinkWrap: true,
    //                       // itemCount: widget.konten.listTahun.length,
    //                       itemCount: 2,
    //                       itemBuilder: (context, index) {
    //                         TahunModel tahun = widget.konten.listTahun[index];
    //                         return Column(
    //                           children: [
    //                             Container(
    //                               width: MediaQuery.of(context).size.width - 50,
    //                               child:
    //                                   // Text(tahun.listNegara[index].nama),
    //                                   Image(
    //                                       image: NetworkImage(
    //                                           tahun.listNegara[index].gambar)),
    //                             ),
    //                             // ListView.builder(
    //                             //   itemCount: 3,
    //                             //   itemBuilder: (context, index) {
    //                             //     return Container(
    //                             //       child: Image(
    //                             //           image: NetworkImage(
    //                             //               tahun.listNegara[index].gambar)),
    //                             //     );
    //                             //   },
    //                             // )
    //                             // Expanded(
    //                             //     child: ListView.builder(
    //                             //   itemCount: (tahun.listNegara.length).ceil(),
    //                             //   itemBuilder: (context, index) {
    //                             //     return Row(
    //                             //       crossAxisAlignment:
    //                             //           CrossAxisAlignment.start,
    //                             //       mainAxisAlignment:
    //                             //           MainAxisAlignment.spaceEvenly,
    //                             //       children: [
    //                             //         Container(
    //                             //           width: (MediaQuery.of(context)
    //                             //                       .size
    //                             //                       .width /
    //                             //                   4) -
    //                             //               30,
    //                             //           height: 100,
    //                             //           child: Column(children: [
    //                             //             // Container(
    //                             //             //   decoration: BoxDecoration(
    //                             //             //     borderRadius:
    //                             //             //         BorderRadius.circular(20),
    //                             //             //   ),
    //                             //             //   child: Image(
    //                             //             //       image: NetworkImage(tahun
    //                             //             //           .listNegara[index]
    //                             //             //           .gambar)),
    //                             //             // )
    //                             //           ]),
    //                             //         )
    //                             //       ],
    //                             //     );
    //                             //   },
    //                             // ))
    //                           ],
    //                         );
    //                       },
    //                     ))
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
