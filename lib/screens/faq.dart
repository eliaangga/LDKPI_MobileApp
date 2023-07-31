import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/tombol_kembali.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  final TextEditingController _controllerSearch = TextEditingController();
  late List<String> _listFAQ;

  @override
  void initState() {
    super.initState();
    _listFAQ = [];
  }

  @override
  Widget build(BuildContext context) {
    final commonBorderRadius = BorderRadius.circular(100);
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
                            padding: EdgeInsets.fromLTRB(5, 25, 15, 10),
                            child: Text(
                              AppLocalizations.of(context)!.faq,
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
              ],
            ),
          ),
          // Positioned(
          //   left: MediaQuery.of(context).size.width * 0.32,
          //   top: 110,
          //   child: ClipRRect(
          //     borderRadius: commonBorderRadius,
          //     child: BackdropFilter(
          //       filter: ImageFilter.blur(
          //         sigmaX: 50,
          //         sigmaY: 50,
          //       ),
          //       child: Container(
          //         width: 150,
          //         height: 50,
          //         decoration: const BoxDecoration(
          //           color: Color(0x33ffffff),
          //         ),
          //         child: const Center(
          //           child: Text(
          //             'Ayok Hubungi Kami',
          //             textAlign: TextAlign.center,
          //             style: TextStyle(
          //               fontFamily: 'Gotham',
          //               fontSize: 14,
          //               fontWeight: FontWeight.w500,
          //               height: 0.957,
          //               color: Color(0xffffffff),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
