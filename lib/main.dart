import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'package:ldkpi_news_app/language/config.dart';
import 'package:ldkpi_news_app/language/l10n.dart';
import 'package:ldkpi_news_app/services/koneksi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'components/base.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(App());
}

Koneksi koneksi = Koneksi();
ConfigLanguage konfig = ConfigLanguage();

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
      ),
    );
  }
}
