import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/models/berita_model.dart';

class BeritaPageProvider extends ChangeNotifier {
  bool firstTime = true;
  List<BeritaModel> listAllBerita = [];
  List<BeritaModel> listBeritaTampil = [];
  bool isLoading = false;
  int jumlahTampil = 0;
  int penambahan = 10;
  TextEditingController controllerSearch = TextEditingController();

  late Future<List<BeritaModel>> listFutureBerita = Future.delayed(
    const Duration(milliseconds: 1000),
    () => listAllBerita,
  );

  Future loadMore() async {
    isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 1000));
    for (var i = jumlahTampil;
        jumlahTampil + penambahan < listAllBerita.length
            ? i < jumlahTampil + penambahan
            : i < listAllBerita.length;
        i++) {
      listBeritaTampil.add(listAllBerita[i]);
    }
    isLoading = false;
    jumlahTampil = listBeritaTampil.length;
    notifyListeners();
  }

  void reset() {
    firstTime = true;
    listAllBerita = [];
    listBeritaTampil = [];
    jumlahTampil = 0;
  }

  void ambilBerita() {
    koneksi.fetchNews().then(
      (response) {
        if (koneksi.listBerita != []) {
          listAllBerita = koneksi.listBerita;
          firstTime = false;
          notifyListeners();
          loadMore();
        }
      },
    );
  }

  void searchNews() {
    reset();
    if (controllerSearch.text != '') {
      koneksi.fetchNewsByKeyword(controllerSearch.text).then((response) {
        if (koneksi.listBerita != []) {
          listAllBerita = koneksi.listBerita;
          firstTime = false;
          notifyListeners();
          loadMore();
        }
      });
    } else {
      ambilBerita();
    }
  }
}
