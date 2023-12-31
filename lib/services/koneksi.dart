import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:ldkpi_news_app/models/anggota_manajemen.dart';
import 'package:ldkpi_news_app/models/berita_model.dart';
import 'package:ldkpi_news_app/models/informasi_pengadaan_model.dart';
import 'package:ldkpi_news_app/models/investasi_model.dart';
import 'package:ldkpi_news_app/models/negara_model.dart';
import 'package:ldkpi_news_app/models/nilai_budaya_model.dart';
import 'package:ldkpi_news_app/models/pemberian_hibah_model.dart';
import 'package:ldkpi_news_app/models/penerima_hibah_model.dart';
import 'package:ldkpi_news_app/models/peraturan_model.dart';
import 'package:ldkpi_news_app/models/proses_bisnis_model.dart';
import 'package:ldkpi_news_app/models/sejarah_model.dart';
import 'package:ldkpi_news_app/models/struktur_manajemen_model.dart';
import 'package:ldkpi_news_app/models/struktur_organisasi_model.dart';
import 'package:ldkpi_news_app/models/survei_layanan_model.dart';
import 'package:ldkpi_news_app/models/tahun_model.dart';
import 'package:ldkpi_news_app/models/tugas_fungsi_model.dart';
import 'package:ldkpi_news_app/models/visimisi_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Koneksi {
  String apiUrl = dotenv.env['FLUTTER_APP_API_URL']!;
  List<BeritaModel> listBerita = [];
  String useLanguage = '';

  Future<InvestasiModel> fetchInvest() async {
    InvestasiModel hasil = InvestasiModel();
    try {
      final response = await http.get(
          Uri.parse('$apiUrl/api/investment?populate=*&locale=$useLanguage'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        hasil = InvestasiModel(
          konten: jsonData['data']['attributes']['konten'],
        );
      } else {
        return hasil;
      }
    } catch (e) {
      return hasil;
    }
    return hasil;
  }

  Future<NilaiBudayaModel> fetchNilaiBudaya() async {
    NilaiBudayaModel hasil = NilaiBudayaModel();
    try {
      final response = await http.get(
          Uri.parse('$apiUrl/api/nilai-budaya?populate=*&locale=$useLanguage'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        hasil = NilaiBudayaModel(
          konten: jsonData['data']['attributes']['konten'],
        );
      } else {
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
    return hasil;
  }

  Future<List<String>> fetchCarousel() async {
    List<String> hasil = [];
    try {
      final response = await http
          .get(Uri.parse('$apiUrl/api/foto-carousel-home?populate=*'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        for (var article in jsonData['data']['attributes']['foto']['data']) {
          String gambar =
              'https://www.hdwallpapers.in/download/avengers_infinity_war_4k_8k-wide.jpg';
          if (article['attributes']['url'] != null) {
            gambar = apiUrl + article['attributes']['url'];
          } else {
            gambar = 'not';
          }
          hasil.add(gambar);
        }
      } else {
        hasil = ['not', 'not', 'not'];
      }
    } catch (e) {
      hasil = ['not', 'not', 'not'];
    }
    return hasil;
  }

  Future<StrukturOrganisasiModel> fetchOrganisasi() async {
    StrukturOrganisasiModel hasil = StrukturOrganisasiModel();
    try {
      final response = await http.get(
          Uri.parse('$apiUrl/api/organisasi?populate=*&locale=$useLanguage'));
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
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
    return hasil;
  }

  Future<PemberianHibahModel> fetchPemberiHibah() async {
    PemberianHibahModel hasil = PemberianHibahModel();
    try {
      final response = await http.get(Uri.parse(
          '$apiUrl/api/pemberian-hibah?populate=*&locale=$useLanguage'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        hasil = PemberianHibahModel(
          konten: jsonData['data']['attributes']['konten'],
        );
      } else {
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
    return hasil;
  }

  Future<PeraturanModel> fetchPeraturan() async {
    PeraturanModel hasil = PeraturanModel();
    try {
      final response = await http.get(
          Uri.parse('$apiUrl/api/peraturan?populate=*&locale=$useLanguage'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        hasil = PeraturanModel(
          konten: jsonData['data']['attributes']['konten'],
        );
      } else {
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
    return hasil;
  }

  Future<SejarahModel> fetchSejarah() async {
    SejarahModel hasil = SejarahModel();
    try {
      final response = await http
          .get(Uri.parse('$apiUrl/api/sejarah?populate=*&locale=$useLanguage'));
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
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
    return hasil;
  }

  Future<SurveiLayananModel> fetchSurvei() async {
    SurveiLayananModel hasil = SurveiLayananModel();
    try {
      final response = await http.get(Uri.parse(
          '$apiUrl/api/survey-layanan?populate=*&locale=$useLanguage'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        hasil = SurveiLayananModel(
          konten: jsonData['data']['attributes']['konten'],
        );
      } else {
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
    return hasil;
  }

  Future<VisiMisiModel> fetchVisiMisi() async {
    VisiMisiModel hasil = VisiMisiModel();
    try {
      final response = await http.get(
          Uri.parse('$apiUrl/api/visi-misi?populate=*&locale=$useLanguage'));
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
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
    return hasil;
  }

  Future<PenerimaHibahModel> fetchPenerimaHibah() async {
    PenerimaHibahModel hasil = PenerimaHibahModel();
    try {
      final response = await http.get(Uri.parse(
          '$apiUrl/api/penerima-hibah?locale=$useLanguage&populate[0]=gambarPenerima&populate[1]=listPenerima&populate[2]=listPenerima.detailNegara&populate[3]=listPenerima.detailNegara.gambarNegara'));
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
                detail: negara['detail'],
                gambar: apiUrl +
                    negara['gambarNegara']['data']['attributes']['url']);
            listNegara.add(hasilNegara);
          }
          TahunModel hasilTahun = TahunModel(tahun: tahun['tahun']);
          hasilTahun.listNegara = listNegara;
          listTahun.add(hasilTahun);
        }
        hasil = PenerimaHibahModel(
          gambarPenerima: gambar,
        );
        hasil.listTahun = listTahun;
      } else {
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
    return hasil;
  }

  Future<TugasFungsiModel> fetchTugasFungsi() async {
    TugasFungsiModel hasil = TugasFungsiModel();
    try {
      final response = await http.get(
          Uri.parse('$apiUrl/api/tugas-fungsi?locale=$useLanguage&populate=*'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        String gambar = '';
        if (jsonData['data']['attributes']['gambarTugasFungsi']['data'] !=
            null) {
          gambar = apiUrl +
              jsonData['data']['attributes']['gambarTugasFungsi']['data']
                  ['attributes']['url'];
        }

        hasil = TugasFungsiModel(
          gambar: gambar,
        );
      } else {
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
    return hasil;
  }

  Future<String> fetchMarquee() async {
    String hasil = '';
    try {
      final response = await http.get(Uri.parse(
          '$apiUrl/api/marquee-content?locale=$useLanguage&populate=*'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        hasil = jsonData['data']['attributes']['MarqueeLink'];
      } else {
        hasil = 'Data not found';
        return hasil;
      }
    } catch (e) {
      hasil = 'Data not found';
      return hasil;
    }
    return hasil;
  }

  Future<String> fetchVideoProfile() async {
    String hasil = '';
    try {
      final response =
          await http.get(Uri.parse('$apiUrl/api/home?populate[0]=profilAID'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        if (jsonData['data']['attributes']['profilAID']['data'][0] != null) {
          hasil = apiUrl +
              jsonData['data']['attributes']['profilAID']['data'][0]
                  ['attributes']['url'];
        }
      } else {
        hasil = 'not';
      }
    } catch (e) {
      hasil = 'not';
    }
    return hasil;
  }

  Future<InformasiPengadaanModel> fetchPengadaan() async {
    InformasiPengadaanModel hasil = InformasiPengadaanModel();
    try {
      final response = await http.get(Uri.parse(
          '$apiUrl/api/informasi-pengadaan?populate=*&locale=$useLanguage'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        hasil = InformasiPengadaanModel(
          konten: jsonData['data']['attributes']['konten'],
        );
      } else {
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
    return hasil;
  }

  Future<void> fetchNews() async {
    List<BeritaModel> getList = [];
    try {
      final response = await http.get(Uri.parse(
          '$apiUrl/api/beritas?populate=*&locale=$useLanguage&sort[0]=createdAt%3Adesc'));
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
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  Future<List<BeritaModel>> fetchLatestNews() async {
    List<BeritaModel> getList = [];
    try {
      final response = await http.get(Uri.parse(
          '$apiUrl/api/beritas?populate=*&locale=$useLanguage&sort[0]=createdAt%3Adesc&pagination[limit]=3'));
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
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('ErrorLatestNews: $e');
    }
    return getList;
  }

  Future<void> fetchNewsByKeyword(String keyword) async {
    List<BeritaModel> getList = [];
    try {
      final response = await http.get(Uri.parse(
          '$apiUrl/api/beritas?populate=*&locale=$useLanguage&sort[0]=createdAt%3Adesc&filters[judul][\$containsi]=$keyword'));
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
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  Future<List<StrukturManajemenModel>> fetchManagement() async {
    List<StrukturManajemenModel> hasil = [];

    try {
      final response = await http.get(Uri.parse(
          '$apiUrl/api/struktur-manajemens?locale=$useLanguage&sort[0]=createdAt&populate[0]=detailAnggota&populate[1]=detailAnggota.fotoAnggota'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        for (var tingkat in jsonData['data']) {
          List<AnggotaManajemen> listAnggota = [];
          for (var anggota in tingkat['attributes']['detailAnggota']) {
            String gambar = '';
            if (anggota['fotoAnggota']['data'] != null) {
              gambar =
                  apiUrl + anggota['fotoAnggota']['data']['attributes']['url'];
            }
            AnggotaManajemen getAnggota = AnggotaManajemen(
              nama: anggota['namaAnggota'],
              jabatan: anggota['jabatanAnggota'],
              foto: gambar,
            );
            listAnggota.add(getAnggota);
          }
          StrukturManajemenModel manajemen = StrukturManajemenModel(
              tingkat: tingkat['attributes']['namaBidang']);
          manajemen.listAnggota = listAnggota;
          hasil.add(manajemen);
        }
      } else {
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
    return hasil;
  }

  Future<ProsesBisnisModel> fetchProcess() async {
    ProsesBisnisModel hasil = ProsesBisnisModel();
    try {
      final response = await http.get(
          Uri.parse('$apiUrl/api/proses-bizz?locale=$useLanguage&populate=*'));
      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        if (jsonData['data'] != null) {
          hasil = ProsesBisnisModel(
              konten: jsonData['data']['attributes']['konten'],
              gambar: apiUrl +
                  jsonData['data']['attributes']['gambarProses']['data']
                      ['attributes']['url']);
        }
      } else {
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
    return hasil;
  }

  Future<List<String>> fetchSebaranHibah() async {
    List<String> hasil = [];
    try {
      final response = await http.get(Uri.parse(
          '$apiUrl/api/penerima-hibah?populate[0]=gambarPenerimaMobile'));

      if (response.statusCode == 200) {
        dynamic jsonData = json.decode(response.body);
        for (var article in jsonData['data']['attributes']
            ['gambarPenerimaMobile']['data']) {
          String gambar = 'not';
          if (article != null) {
            gambar = apiUrl + article['attributes']['url'];
          }
          hasil.add(gambar);
        }
      } else {
        hasil = ['not', 'not'];
      }
    } catch (e) {
      hasil = ['not', 'not'];
    }
    return hasil;
  }
}
