import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ldkpi_news_app/models/berita_model.dart';
import 'package:ldkpi_news_app/models/informasi_pengadaan_model.dart';
import 'package:ldkpi_news_app/models/investasi_model.dart';
import 'package:ldkpi_news_app/models/negara_model.dart';
import 'package:ldkpi_news_app/models/nilai_budaya_model.dart';
import 'package:ldkpi_news_app/models/pemberian_hibah_model.dart';
import 'package:ldkpi_news_app/models/penerima_hibah_model.dart';
import 'package:ldkpi_news_app/models/peraturan_model.dart';
import 'package:ldkpi_news_app/models/sebaranhibah_model.dart';
import 'package:ldkpi_news_app/models/sejarah_model.dart';
import 'package:ldkpi_news_app/models/struktur_organisasi_model.dart';
import 'package:ldkpi_news_app/models/survei_layanan_model.dart';
import 'package:ldkpi_news_app/models/tahun_model.dart';
import 'package:ldkpi_news_app/models/visimisi_model.dart';

class Koneksi {
  String apiUrl = "http://10.201.18.243:1337";
  List<BeritaModel> listBerita = [];

  Future<InvestasiModel> fetchInvest() async {
    InvestasiModel investasi = InvestasiModel();
    try {
      final response = await http
          .get(Uri.parse('$apiUrl/api/investment?populate=*&locale=id'));
      // final response = await http.get(Uri.parse(
      //     'https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime=2022-03-05&endtime=2022-03-06&limit=2'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        investasi = InvestasiModel(
          konten: jsonData['data']['attributes']['konten'],
          // konten: jsonData['features'][0]['properties']['type'],
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return investasi;
  }

  Future<NilaiBudayaModel> fetchNilaiBudaya() async {
    NilaiBudayaModel hasil = NilaiBudayaModel();
    try {
      final response = await http
          .get(Uri.parse('$apiUrl/api/nilai-budaya?populate=*&locale=id'));
      // final response = await http.get(Uri.parse(
      //     'https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime=2022-03-05&endtime=2022-03-06&limit=2'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        hasil = NilaiBudayaModel(
          konten: jsonData['data']['attributes']['konten'],
          // konten: jsonData['features'][0]['properties']['type'],
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return hasil;
  }

  Future<StrukturOrganisasiModel> fetchOrganisasi() async {
    StrukturOrganisasiModel hasil = StrukturOrganisasiModel();
    try {
      final response = await http
          .get(Uri.parse('$apiUrl/api/organisasi?populate=*&locale=id'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        String gambar = '';
        if (jsonData['data']['attributes']['gambarOrganisasi']['data'] !=
            null) {
          gambar = apiUrl +
              jsonData['data']['attributes']['gambarOrganisasi']['data']
                  ['attributes']['url'];
        }
        hasil = StrukturOrganisasiModel(
          konten: gambar,
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return hasil;
  }

  Future<PemberianHibahModel> fetchPemberiHibah() async {
    PemberianHibahModel hasil = PemberianHibahModel();
    try {
      final response = await http
          .get(Uri.parse('$apiUrl/api/pemberian-hibah?populate=*&locale=id'));
      // final response = await http.get(Uri.parse(
      //     'https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime=2022-03-05&endtime=2022-03-06&limit=2'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        hasil = PemberianHibahModel(
          konten: jsonData['data']['attributes']['konten'],
          // konten: jsonData['features'][0]['properties']['type'],
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return hasil;
  }

  Future<PeraturanModel> fetchPeraturan() async {
    PeraturanModel hasil = PeraturanModel();
    try {
      final response = await http
          .get(Uri.parse('$apiUrl/api/peraturan?populate=*&locale=id'));
      // final response = await http.get(Uri.parse(
      //     'https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime=2022-03-05&endtime=2022-03-06&limit=2'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        hasil = PeraturanModel(
          konten: jsonData['data']['attributes']['konten'],
          // konten: jsonData['features'][0]['properties']['type'],
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return hasil;
  }

  Future<SejarahModel> fetchSejarah() async {
    SejarahModel hasil = SejarahModel();
    try {
      final response =
          await http.get(Uri.parse('$apiUrl/api/sejarah?populate=*&locale=id'));
      // final response = await http.get(Uri.parse(
      //     'https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime=2022-03-05&endtime=2022-03-06&limit=2'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        String gambar = '';
        if (jsonData['data']['attributes']['gambarSejarah']['data'] != null) {
          gambar = apiUrl +
              jsonData['data']['attributes']['gambarSejarah']['data']
                  ['attributes']['url'];
        }
        hasil = SejarahModel(
          konten: jsonData['data']['attributes']['konten'],
          img: gambar,
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return hasil;
  }

  Future<SurveiLayananModel> fetchSurvei() async {
    SurveiLayananModel hasil = SurveiLayananModel();
    try {
      final response = await http
          .get(Uri.parse('$apiUrl/api/survey-layanan?populate=*&locale=id'));
      // final response = await http.get(Uri.parse(
      //     'https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime=2022-03-05&endtime=2022-03-06&limit=2'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        hasil = SurveiLayananModel(
          konten: jsonData['data']['attributes']['konten'],
          // konten: jsonData['features'][0]['properties']['type'],
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return hasil;
  }

  Future<VisiMisiModel> fetchVisiMisi() async {
    VisiMisiModel hasil = VisiMisiModel();
    try {
      final response = await http
          .get(Uri.parse('$apiUrl/api/visi-misi?populate=*&locale=id'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        String gambar = '';
        if (jsonData['data']['attributes']['fotoVisiMisi']['data'] != null) {
          gambar = apiUrl +
              jsonData['data']['attributes']['fotoVisiMisi']['data']
                  ['attributes']['url'];
        }
        hasil = VisiMisiModel(
          konten: gambar,
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return hasil;
  }

  Future<PenerimaHibahModel> fetchPenerimaHibah() async {
    PenerimaHibahModel hasil = PenerimaHibahModel();
    try {
      final response = await http.get(Uri.parse(
          '$apiUrl/api/penerima-hibah?locale=id&populate[0]=gambarPenerima&populate[1]=listPenerima&populate[2]=listPenerima.detailNegara&populate[3]=listPenerima.detailNegara.gambarNegara'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        String gambar = '';
        if (jsonData['data']['attributes']['gambarPenerima']['data'] != null) {
          gambar = apiUrl +
              jsonData['data']['attributes']['gambarPenerima']['data']
                  ['attributes']['url'];
        }
        List<TahunModel> listTahun = [];
        for (var tahun in jsonData['data']['attributes']['listPenerima']) {
          List<NegaraModel> listNegara = [];
          for (var negara in tahun['detailNegara']) {
            NegaraModel hasilNegara = NegaraModel(
                nama: negara['namaNegara'],
                gambar: apiUrl +
                    negara['gambarNegara']['data']['attributes']['url']);
            listNegara.add(hasilNegara);
          }
          print(listNegara.length);
          TahunModel hasilTahun = TahunModel(tahun: tahun['tahun']);
          hasilTahun.listNegara = listNegara;
          print(hasilTahun.tahun);
          listTahun.add(hasilTahun);
        }
        hasil = PenerimaHibahModel(
          gambarPenerima: gambar,
        );
        hasil.listTahun = listTahun;
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return hasil;
  }

  Future<InformasiPengadaanModel> fetchPengadaan() async {
    InformasiPengadaanModel investasi = InformasiPengadaanModel();
    try {
      final response = await http.get(
          Uri.parse('$apiUrl/api/informasi-pengadaan?populate=*&locale=id'));
      // final response = await http.get(Uri.parse(
      //     'https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime=2022-03-05&endtime=2022-03-06&limit=2'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        investasi = InformasiPengadaanModel(
          konten: jsonData['data']['attributes']['konten'],
          // konten: jsonData['features'][0]['properties']['type'],
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return investasi;
  }

  Future<void> fetchNews() async {
    List<BeritaModel> getList = [];
    try {
      final response = await http.get(Uri.parse(
          '$apiUrl/api/beritas?populate=*&locale=en&sort[0]=createdAt%3Adesc'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        for (var article in jsonData['data']) {
          String gambar = '';
          if (article['attributes']['gambarBerita']['data'] != null) {
            gambar = apiUrl +
                article['attributes']['gambarBerita']['data']['attributes']
                    ['url'];
          }
          BeritaModel newBlog = BeritaModel(
            title: article['attributes']['judul'],
            isi: article['attributes']['konten'],
            img: gambar,
            penulis: article['attributes']['authorEditor']['author'],
            editor: article['attributes']['authorEditor']['editor'],
          );
          getList.add(newBlog);
        }
        listBerita = getList;
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<List<BeritaModel>> fetchLatestNews() async {
    List<BeritaModel> getList = [];
    try {
      final response = await http.get(Uri.parse(
          '$apiUrl/api/beritas?populate=*&locale=en&sort[0]=createdAt%3Adesc&pagination[limit]=3'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        for (var article in jsonData['data']) {
          String gambar = '';
          if (article['attributes']['gambarBerita']['data'] != null) {
            gambar = apiUrl +
                article['attributes']['gambarBerita']['data']['attributes']
                    ['url'];
          }
          BeritaModel newBlog = BeritaModel(
            title: article['attributes']['judul'],
            isi: article['attributes']['konten'],
            img: gambar,
            penulis: article['attributes']['authorEditor']['author'],
            editor: article['attributes']['authorEditor']['editor'],
          );
          getList.add(newBlog);
        }
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return getList;
  }

  Future<void> fetchNewsByKeyword(String keyword) async {
    List<BeritaModel> getList = [];
    try {
      final response = await http.get(Uri.parse(
          '$apiUrl/api/beritas?populate=*&locale=en&sort[0]=createdAt%3Adesc&filters[judul][\$containsi]=$keyword'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        for (var article in jsonData['data']) {
          String gambar = '';
          if (article['attributes']['gambarBerita']['data'] != null) {
            gambar = apiUrl +
                article['attributes']['gambarBerita']['data']['attributes']
                    ['url'];
          }
          BeritaModel newBlog = BeritaModel(
            title: article['attributes']['judul'],
            isi: article['attributes']['konten'],
            img: gambar,
            penulis: article['attributes']['authorEditor']['author'],
            editor: article['attributes']['authorEditor']['editor'],
          );
          getList.add(newBlog);
        }
        listBerita = getList;
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<List<BeritaModel>> fetchManagement() async {
    List<BeritaModel> listStruktur = [];

    try {
      // final response = await http.get(Uri.parse(
      //     '$apiUrl/api/beritas?populate=*&locale=en'));
      final response = await http.get(Uri.parse(
          'https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime=2022-03-05&endtime=2022-03-06&limit=15'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        // for (var article in jsonData['data']) {
        for (var article in jsonData['features']) {
          BeritaModel newBlog = BeritaModel(
            //   title: article['attributes']['judul'],
            //   isi: article['attributes']['konten'],
            //   img: apiUrl +
            //       article['attributes']['gambarBerita']['data']['attributes']
            //           ['formats']['large']['url'],
            //   penulis: article['attributes']['authorEditor']['author'],
            //   editor: article['attributes']['authorEditor']['editor'],
            // );
            title: article['properties']['title'],
            isi: article['properties']['type'],
            img:
                'https://www.hdwallpapers.in/download/avengers_infinity_war_4k_8k-wide.jpg',
            penulis: 'JONI',
            editor: 'JONI',
          );
          listStruktur.add(newBlog);
        }
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return listStruktur;
  }

  Future<List<BeritaModel>> fetchProcess() async {
    List<BeritaModel> listProsesBisnis = [];

    try {
      // final response = await http.get(Uri.parse(
      //     '$apiUrl/api/beritas?populate=*&locale=en'));
      final response = await http.get(Uri.parse(
          'https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime=2022-03-05&endtime=2022-03-06&limit=5'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        // for (var article in jsonData['data']) {
        for (var article in jsonData['features']) {
          BeritaModel newBlog = BeritaModel(
            //   title: article['attributes']['judul'],
            //   isi: article['attributes']['konten'],
            //   img: apiUrl +
            //       article['attributes']['gambarBerita']['data']['attributes']
            //           ['formats']['large']['url'],
            //   penulis: article['attributes']['authorEditor']['author'],
            //   editor: article['attributes']['authorEditor']['editor'],
            // );
            title: article['properties']['title'],
            isi: article['properties']['type'],
            img:
                'https://www.hdwallpapers.in/download/avengers_infinity_war_4k_8k-wide.jpg',
            penulis: 'JONI',
            editor: 'JONI',
          );
          listProsesBisnis.add(newBlog);
        }
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return listProsesBisnis;
  }

  Future<List<SHModel>> fetchSH() async {
    List<SHModel> hasil = [];
    try {
      final response = await http.get(Uri.parse(
          '$apiUrl/api/penerima-hibah?locale=id&populate[0]=gambarPenerima&populate[1]=listPenerima&populate[2]=listPenerima.detailNegara&populate[3]=listPenerima.detailNegara.gambarNegara&populate[4]=gambarPenerimaMobile'));

      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        for (var article in jsonData['data']) {
          SHModel model = SHModel();
          String gambar = '';
          if (article['attributes']['gambarPenerimaMobile']['data'] != null) {
            gambar = apiUrl +
                jsonData['data']['attributes']['gambarPenerimaMobile']['data']
                    [0]['attributes']['url'];
          }
          print('ling $gambar');
          model = SHModel(
            img: gambar,
          );
          hasil.add(model);
        }
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return hasil;
  }
}
