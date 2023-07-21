import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/language/config.dart';
import 'package:ldkpi_news_app/language/l10n.dart';
import 'package:ldkpi_news_app/providers/berita_page_provider.dart';
import 'package:ldkpi_news_app/services/koneksi.dart';
import 'components/base.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  koneksi.fetchCarousel().then((response) {
    listCarousel = response;
  });
  koneksi.fetchMarquee().then((response) {
    marqueeKonten = response;
  });
  koneksi.fetchVideoProfile().then((response) {
    linkVideo = response;
    print('link video $linkVideo');
  });
  koneksi.fetchSebaranHibah().then((response) {
    listSebaranHibah = response;
    runApp(ChangeNotifierProvider(
      create: (context) => BeritaPageProvider(),
      child: App(),
    ));
  });
  // koneksi.fetchLatestNews().then((response) {
  //   runApp(ChangeNotifierProvider(
  //     create: (context) => BeritaPageProvider(),
  //     child: App(),
  //   ));
  // });
}

Koneksi koneksi = Koneksi();
ConfigLanguage konfig = ConfigLanguage();
List<String> listCarousel = [];
List<String> listSebaranHibah = [];
String marqueeKonten = '';
String linkVideo = '';

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String bahasa = '';

  void ubahBahasa(String newBahasa) {
    setState(() {
      bahasa = newBahasa;
    });
  }

  @override
  void initState() {
    super.initState();
    konfig.getBahasaPref().then((response) {
      if (response != '') {
        setState(() {
          bahasa = response;
        });
        koneksi.useLanguage = response;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LDKPI',
      supportedLocales: L10n.all,
      locale: Locale(bahasa),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFF02347C,
          <int, Color>{
            50: Color(0xFF02347C),
            100: Color(0xFF02347C),
            200: Color(0xFF02347C),
            300: Color(0xFF02347C),
            400: Color(0xFF02347C),
            500: Color(0xFF02347C),
            600: Color(0xFF02347C),
            700: Color(0xFF02347C),
            800: Color(0xFF02347C),
            900: Color(0xFF02347C),
          },
        ),
      ),
      home: Base(
        ubahBahasa: ubahBahasa,
        startLanguage: bahasa,
        carousel: listCarousel,
      ),
    );
  }
}
