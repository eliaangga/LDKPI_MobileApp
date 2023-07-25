import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gesture_zoom_box/gesture_zoom_box.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/models/tugas_fungsi_model.dart';

class TugasFungsi extends StatefulWidget {
  final TugasFungsiModel model;
  const TugasFungsi({Key? key, required this.model}) : super(key: key);

  @override
  State<TugasFungsi> createState() => _TugasFungsiState();
}

class _TugasFungsiState extends State<TugasFungsi> {
  double _initialscale = 1.0;
  double _scaleFactor = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onScaleStart: (ScaleStartDetails details) {
          _initialscale = _scaleFactor;
        },
        onScaleUpdate: (ScaleUpdateDetails details) {
          setState(() {
            _scaleFactor = _initialscale * details.scale;
          });
        },
        onScaleEnd: (ScaleEndDetails details) {
          _scaleFactor = 1.0;
          setState(() {});
        },
        child: SingleChildScrollView(
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
                            AppLocalizations.of(context)!.tugas_fungsi,
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
                              margin: EdgeInsets.only(bottom: 60.5),
                              width: MediaQuery.of(context).size.width - 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  child: Image(
                                      image: NetworkImage(widget.model.gambar)),
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
            ],
          ),
        ),
      ),
    );
  }
}
