import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/components/appbar.dart';
import 'package:ldkpi_news_app/components/navbar.dart';
import 'package:ldkpi_news_app/screens/berita_page.dart';
import 'package:ldkpi_news_app/screens/home.dart';
import 'package:ldkpi_news_app/screens/kategori.dart';

class Base extends StatefulWidget {
  final Function(String) ubahBahasa;
  final String startLanguage;
  const Base({
    Key? key,
    required this.ubahBahasa,
    required this.startLanguage,
  }) : super(key: key);

  @override
  State<Base> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<Base> {
  int _selectedIndex = 0;
  final List<Widget> _pilihanMenu = [
    const Home(),
    const BeritaPage(),
    const Kategori(),
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
