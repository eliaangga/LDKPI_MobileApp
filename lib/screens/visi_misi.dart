import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/models/visimisi_model.dart';

class VisiMisi extends StatefulWidget {
  const VisiMisi({Key? key}) : super(key: key);

  @override
  State<VisiMisi> createState() => _VisiMisiState();
}

class _VisiMisiState extends State<VisiMisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                          AppLocalizations.of(context)!.visi_misi,
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
                  const SizedBox(width: 65),
                ],
              ),
            ),
            FutureBuilder(
              future: koneksi.fetchVisiMisi(),
              builder: (BuildContext context,
                  AsyncSnapshot<VisiMisiModel> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CupertinoActivityIndicator();
                } else if (snapshot.data!.konten != '') {
                  return InteractiveViewer(
                    child: Container(
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
                              padding:
                                  const EdgeInsets.fromLTRB(31, 15, 30, 9.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  if (snapshot.data!.konten != '')
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 5),
                                      width: 328,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              50,
                                          child: Image(
                                              image: NetworkImage(
                                                  snapshot.data!.konten)),
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
                  );
                } else {
                  return const Center(
                    child: Text('Data Not Found'),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
