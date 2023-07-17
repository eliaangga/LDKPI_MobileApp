import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/appbar.dart';
import 'package:ldkpi_news_app/components/navbar.dart';
import 'package:ldkpi_news_app/components/openapp_page.dart';
import 'package:ldkpi_news_app/screens/berita_page.dart';
import 'package:ldkpi_news_app/screens/home.dart';
import 'package:ldkpi_news_app/screens/kategori.dart';
import 'package:ldkpi_news_app/main.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class Base extends StatefulWidget {
  final Function(String) ubahBahasa;
  String startLanguage;
  Base({Key? key, required this.ubahBahasa, required this.startLanguage})
      : super(key: key);

  @override
  State<Base> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<Base> {
  int _selectedIndex = 0;
  static const List<Widget> _pilihanMenu = [
    Home(),
    BeritaPage(),
    Kategori(),
    OpenApp()
  ];

  void changePage(int index) {
    if (index < 3) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(),
      body: _pilihanMenu[_selectedIndex],
      bottomNavigationBar: Navbar(
        startLanguage: widget.startLanguage,
        ubahBahasa: widget.ubahBahasa,
        ubahPage: changePage,
      ),
    );
  }
}
