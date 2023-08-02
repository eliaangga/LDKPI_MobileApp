import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/main.dart';

class StartAppProvider extends ChangeNotifier {
  List<String> listCarousel = [];
  List<String> listSebaranHibah = [];
  String marqueeKonten = '';
  String linkVideo = '';
  String bahasa = '';

  void ubahBahasa(String newBahasa) {
    bahasa = newBahasa;
    notifyListeners();
  }

  Future<List<String>> getListCarousel() async {
    if (listCarousel.isEmpty) {
      await koneksi.fetchCarousel().then((response) {
        listCarousel = response;
      });
    }
    return listCarousel;
  }

  Future<List<String>> getListSebaranHibah() async {
    if (listSebaranHibah.isEmpty) {
      await koneksi.fetchSebaranHibah().then((response) {
        listSebaranHibah = response;
      });
    }
    return listSebaranHibah;
  }

  Future<String> getMarquee() async {
    if (marqueeKonten == '') {
      await koneksi.fetchMarquee().then((response) {
        marqueeKonten = response;
        marqueeKonten = marqueeKonten.replaceAll(
            RegExp(r'<a'), '<a style=\'color:black; text-decoration: none\'');
        marqueeKonten = marqueeKonten.replaceAll(
            RegExp(r'</p><p>'), '&emsp;&emsp;&emsp;&emsp;');
      });
    }
    return marqueeKonten;
  }

  void getConsumeMarquee() {
    koneksi.fetchMarquee().then((response) {
      marqueeKonten = response;
      marqueeKonten = marqueeKonten.replaceAll(
          RegExp(r'<a'), '<a style=\'color:black; text-decoration: none\'');
      marqueeKonten = marqueeKonten.replaceAll(
          RegExp(r'</p><p>'), '&emsp;&emsp;&emsp;&emsp;');
      notifyListeners();
    });
  }

  Future<String> getLinkVideo() async {
    if (linkVideo == '') {
      await koneksi.fetchVideoProfile().then((response) {
        linkVideo = response;
      });
    }
    return linkVideo;
  }
}
