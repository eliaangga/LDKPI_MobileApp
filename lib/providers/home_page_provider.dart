import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/models/berita_model.dart';

class HomePageProvider extends ChangeNotifier {
  List<String> listCarousel = [];
  List<String> listSebaranHibah = [];
  String marqueeKonten = '';
  String linkVideo = '';

  void initHomePage() {
    koneksi.fetchCarousel().then((response) {
      listCarousel = response;
      notifyListeners();
      print('listCarousel ${listCarousel.length}');
    });
    koneksi.fetchMarquee().then((response) {
      marqueeKonten = response;
      notifyListeners();
    });
    koneksi.fetchVideoProfile().then((response) {
      linkVideo = response;
      notifyListeners();
    });
    koneksi.fetchSebaranHibah().then((response) {
      listSebaranHibah = response;
      notifyListeners();
      // print('listSebaranHibah $listSebaranHibah');
      print('listCarousel ${listSebaranHibah.length}');
    });
  }
}
