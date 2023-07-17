import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/component/appbar.dart';
import 'package:ldkpi_news_app/component/base.dart';
import 'package:ldkpi_news_app/component/openapp_page.dart';
import 'package:ldkpi_news_app/kategori.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/main.dart';

import '../berita_page.dart';
import '../home.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class Base extends StatefulWidget {
  final Function(String) ubahBahasa;
  String startLanguage;
  Base({Key? key, required this.ubahBahasa, required this.startLanguage})
      : super(key: key);

  @override
  State<Base> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<Base> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  String currentLanguage = '';
  Map<String, dynamic> translations = {};

  @override
  void initState() {
    super.initState();
    currentLanguage = widget.startLanguage;
  }

  int _selectedIndex = 0;
  final controllerPage = PageController(initialPage: 0);
  static const List<Widget> _pilihanMenu = [
    Home(),
    BeritaPage(),
    Kategori(),
    OpenApp()
  ];

  bool isIdSelected = true;
  Color _buttonTextColor = Colors.white;
  Color _buttonBackgroundColor = Colors.transparent;
  double _buttonBorderRadius = 15;

  void _onItemTapped(int index) {
    if (index < 3) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  void switchLanguage() {
    setState(() {
      _buttonTextColor = isIdSelected ? Colors.black : Colors.black;
      _buttonBackgroundColor = isIdSelected ? Colors.white : Colors.white;
      currentLanguage = currentLanguage == 'en' ? 'id' : 'en';
    });
    widget.ubahBahasa(currentLanguage);
    konfig.setBahasaPref(currentLanguage);
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> selectedTranslations =
        translations[currentLanguage.toLowerCase()] ?? {};

    return Scaffold(
      appBar: const Appbar(),
      body: _pilihanMenu[_selectedIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        containerHeight: 50,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        backgroundColor: const Color(0xFF02347C),
        onItemSelected: _onItemTapped,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            activeColor: Colors.white,
            textAlign: TextAlign.center,
            icon: _selectedIndex != 0
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        AppLocalizations.of(context)!.beranda,
                        style:
                            const TextStyle(fontSize: 8, color: Colors.white),
                      )
                    ],
                  )
                : Container(
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    child: const Icon(
                      Icons.home_rounded,
                      color: Colors.white,
                    ),
                  ),
            title: Text(
              AppLocalizations.of(context)!.beranda,
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavyBarItem(
            activeColor: Colors.white,
            textAlign: TextAlign.center,
            icon: _selectedIndex != 1
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.newspaper_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        AppLocalizations.of(context)!.berita,
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      )
                    ],
                  )
                : Container(
                    margin: const EdgeInsets.only(left: 10, right: 5),
                    child: const Icon(
                      Icons.newspaper,
                      color: Colors.white,
                    ),
                  ),
            title: Text(
              AppLocalizations.of(context)!.berita,
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavyBarItem(
            activeColor: Colors.white,
            textAlign: TextAlign.center,
            icon: _selectedIndex != 3
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.bar_chart_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        AppLocalizations.of(context)!.kategori,
                        style: TextStyle(fontSize: 7, color: Colors.white),
                      )
                    ],
                  )
                : Container(
                    margin: const EdgeInsets.only(left: 10, right: 5),
                    child: const Icon(
                      Icons.bar_chart_rounded,
                      color: Colors.white,
                    ),
                  ),
            title: Text(
              AppLocalizations.of(context)!.kategori,
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavyBarItem(
            icon: GestureDetector(
                onTap: switchLanguage,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(_buttonBorderRadius),
                  ),
                  child: Text(
                    currentLanguage,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )),
            title: Text(
              currentLanguage,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
