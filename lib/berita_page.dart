import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/berita_konten.dart';
import 'package:ldkpi_news_app/component/kontainer_berita.dart';
import 'package:ldkpi_news_app/main.dart';

import 'model/berita.dart';

class BeritaPage extends StatefulWidget {
  const BeritaPage({super.key});

  @override
  State<BeritaPage> createState() => _BeritaPageState();
}

class _BeritaPageState extends State<BeritaPage> {
  TextEditingController controllerSearch = TextEditingController();
  bool firstTime = true;
  List<BeritaModel> listAllBerita = [];
  List<BeritaModel> listBeritaTampil = [];
  bool _isLoading = false;
  int jumlahTampil = 0;
  int penambahan = 10;

  Future loadMore() async {
    setState(() {
      _isLoading = true;
    });
    await Future.delayed(const Duration(milliseconds: 1000));
    for (var i = jumlahTampil;
        jumlahTampil + penambahan < listAllBerita.length
            ? i < jumlahTampil + penambahan
            : i < listAllBerita.length;
        i++) {
      debugPrint(i.toString());
      listBeritaTampil.add(listAllBerita[i]);
    }
    debugPrint("listBeritaTampil '${listBeritaTampil.length}'");

    setState(() {
      _isLoading = false;
      jumlahTampil = listBeritaTampil.length;
    });
  }

  late Future<List<BeritaModel>> _listGetBerita = Future.delayed(
    const Duration(milliseconds: 1000),
    () => koneksi.listBerita,
  );

  ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    koneksi.fetchNews().then(
      (response) {
        if (koneksi.listBerita != []) {
          setState(() {
            listAllBerita = koneksi.listBerita;
            firstTime = false;
          });
          loadMore();
        }
      },
    );

    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        loadMore();
      }
    });
  }

  void searchNews() {
    setState(() {
      firstTime = true;
      listAllBerita = [];
      listBeritaTampil = [];
      jumlahTampil = 0;
    });
    if (controllerSearch.text != '') {
      koneksi.fetchNewsByKeyword(controllerSearch.text).then((response) {
        if (koneksi.listBerita != []) {
          setState(() {
            listAllBerita = koneksi.listBerita;
            firstTime = false;
          });
          loadMore();
        }
      });
    } else {
      koneksi.fetchNews().then(
        (response) {
          if (koneksi.listBerita != []) {
            setState(() {
              listAllBerita = koneksi.listBerita;
              firstTime = false;
            });
            loadMore();
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xFF02347C),
                  height: 70,
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.berita,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 250,
                      child: TextField(
                        controller: controllerSearch,
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                            icon: const Icon(
                              Icons.search,
                            ),
                            onPressed: () => searchNews(),
                          ),
                          hintText: AppLocalizations.of(context)!.keyword,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () => searchNews(),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF02275C),
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0)),
                      child: Text(
                        AppLocalizations.of(context)!.cari,
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 120),
            child: FutureBuilder(
              future: _listGetBerita,
              builder: (BuildContext context,
                  AsyncSnapshot<List<BeritaModel>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: const CupertinoActivityIndicator(),
                  );
                } else if (snapshot.data!.isEmpty) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: const Center(child: Text('Data not found')),
                  );
                } else if (snapshot.hasError) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: const Center(child: Text('Error')),
                  );
                } else {
                  return RefreshIndicator(
                    onRefresh: () async {
                      setState(() {
                        firstTime = true;
                        listAllBerita = [];
                        listBeritaTampil = [];
                        jumlahTampil = 0;
                        controllerSearch.text = '';
                      });
                      koneksi.fetchNews().then(
                        (response) {
                          if (koneksi.listBerita != []) {
                            setState(() {
                              listAllBerita = koneksi.listBerita;
                              firstTime = false;
                            });
                            loadMore();
                          }
                        },
                      );
                    },
                    child: ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      controller: _controller,
                      shrinkWrap: true,
                      itemCount: _isLoading
                          ? (listBeritaTampil.length / 2).ceil() + 1
                          : (listBeritaTampil.length / 2).ceil(),
                      itemBuilder: (context, index) {
                        if (index * 2 >= listBeritaTampil.length &&
                            _isLoading) {
                          return const Center(
                            child: CupertinoActivityIndicator(),
                          );
                        } else {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BeritaKonten(
                                        kontenBerita:
                                            listBeritaTampil[index * 2],
                                      ),
                                    ),
                                  );
                                },
                                child: KontainerBerita(
                                  judul: listBeritaTampil[index * 2].title,
                                  isi: listBeritaTampil[index * 2].isi,
                                  gambar: listBeritaTampil[index * 2].img,
                                ),
                              ),
                              if ((index * 2) + 1 < listBeritaTampil.length)
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BeritaKonten(
                                          kontenBerita:
                                              listBeritaTampil[(index * 2) + 1],
                                        ),
                                      ),
                                    );
                                  },
                                  child: KontainerBerita(
                                    judul:
                                        listBeritaTampil[(index * 2) + 1].title,
                                    isi: listBeritaTampil[(index * 2) + 1].isi,
                                    gambar:
                                        listBeritaTampil[(index * 2) + 1].img,
                                  ),
                                ),
                            ],
                          );
                        }
                      },
                    ),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
