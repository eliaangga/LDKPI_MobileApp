import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ldkpi_news_app/language/config.dart';
import 'package:ldkpi_news_app/language/l10n.dart';
import 'package:ldkpi_news_app/providers/berita_page_provider.dart';
import 'package:ldkpi_news_app/providers/home_page_provider.dart';
import 'package:ldkpi_news_app/services/koneksi.dart';
import 'package:provider/provider.dart';

import 'components/base.dart';

Future<void> main() async {
  await dotenv.load(fileName: "lib/.env");
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => BeritaPageProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => HomePageProvider(),
      ),
    ],
    child: const App(),
  ));
}

Koneksi koneksi = Koneksi();
ConfigLanguage konfig = ConfigLanguage();

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

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
    final beritaProvider =
        Provider.of<BeritaPageProvider>(context, listen: false);
    beritaProvider.latestNews();
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
        home: AnimatedSplashScreen(
          duration: 5000,
          splash: 'assets/assets/images/ldkpi.png',
          backgroundColor: const Color(0xFF02347C),
          splashTransition: SplashTransition.slideTransition,
          // pageTransitionType: PageTransitionType.fade,
          nextScreen: Base(
            ubahBahasa: ubahBahasa,
            startLanguage: bahasa,
          ),
        ));
  }
}
