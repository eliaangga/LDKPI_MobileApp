import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/models/struktur_organisasi_model.dart';

class StrukturOrg extends StatefulWidget {
  StrukturOrganisasiModel konten;
  StrukturOrg({Key? key, required this.konten}) : super(key: key);

  @override
  State<StrukturOrg> createState() => _StrukturOrgState();
}

class _StrukturOrgState extends State<StrukturOrg> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 70,
            color: const Color(0xFF02347C),
            child: Row(
              children: [
                SizedBox(width: 20),
                const TombolKembali(),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      'Organisasi',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ),
                SizedBox(width: 115),
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
                        SizedBox(
                          width: 192,
                          height: 20,
                          child: Text(
                            'Struktur Organisasi',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              height: 0.5,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        if (widget.konten.konten != '')
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            width: 328,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width - 50,
                                child: Image(
                                    image: NetworkImage(widget.konten.konten)),
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
    );
  }
}
