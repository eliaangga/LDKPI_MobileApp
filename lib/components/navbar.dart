import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/main.dart';

class Navbar extends StatefulWidget {
  final Function(String) ubahBahasa;
  final Function(int) ubahPage;
  String startLanguage;

  Navbar(
      {super.key,
      required this.ubahBahasa,
      required this.startLanguage,
      required this.ubahPage});
  @override
  State<Navbar> createState() => _Navbar();
}

class _Navbar extends State<Navbar> {
  int _selectedIndex = 0;
  String currentLanguage = '';
  final double _buttonBorderRadius = 15;

  void _onItemTapped(int index) {
    if (index < 3) {
      setState(() {
        _selectedIndex = index;
      });
      widget.ubahPage(index);
    }
  }

  void switchLanguage() {
    setState(() {
      currentLanguage = currentLanguage == 'EN' ? 'ID' : 'EN';
    });
    widget.ubahBahasa(currentLanguage);
    konfig.setBahasaPref(currentLanguage);
    koneksi.useLanguage = currentLanguage;
    koneksi.fetchNews();
  }

  @override
  void initState() {
    super.initState();
    currentLanguage = widget.startLanguage;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: _selectedIndex,
      containerHeight: 52.5,
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
                      style: const TextStyle(fontSize: 8, color: Colors.white),
                    )
                  ],
                )
              : Container(
                  margin: const EdgeInsets.only(left: 4, right: 4),
                  child: const Icon(
                    Icons.home_rounded,
                    color: Colors.white,
                  ),
                ),
          title: Text(
            AppLocalizations.of(context)!.beranda,
            style: const TextStyle(color: Colors.white),
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
                      style: const TextStyle(fontSize: 8, color: Colors.white),
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
            style: const TextStyle(color: Colors.white),
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
                      style: const TextStyle(fontSize: 7, color: Colors.white),
                    )
                  ],
                )
              : Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  child: const Icon(
                    Icons.bar_chart_rounded,
                    color: Colors.white,
                  ),
                ),
          title: Text(
            AppLocalizations.of(context)!.kategori,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        BottomNavyBarItem(
          icon: GestureDetector(
            onTap: switchLanguage,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    padding: const EdgeInsets.fromLTRB(0.5, 1, 0, 1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(_buttonBorderRadius),
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: currentLanguage == 'ID'
                                ? Color(0xff02275c)
                                : Colors.transparent,
                            borderRadius:
                                BorderRadius.circular(_buttonBorderRadius),
                          ),
                          padding: const EdgeInsets.fromLTRB(3, 3, 3, 3),
                          child: Text(
                            'ID',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.5,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: currentLanguage == 'EN'
                                ? Color(0xff02275c)
                                : Colors.transparent,
                            borderRadius:
                                BorderRadius.circular(_buttonBorderRadius),
                          ),
                          padding: const EdgeInsets.fromLTRB(3, 3, 3, 3),
                          child: Text(
                            'EN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Bahasa',
                    style: TextStyle(color: Colors.white, fontSize: 7),
                  ),
                ],
              ),
            ),
          ),
          title: Text(
            currentLanguage,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
