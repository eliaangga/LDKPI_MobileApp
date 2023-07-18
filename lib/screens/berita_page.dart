import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/providers/berita_page_provider.dart';
import 'package:ldkpi_news_app/screens/berita_konten.dart';
import 'package:ldkpi_news_app/components/kontainer_berita.dart';
import 'package:ldkpi_news_app/main.dart';
import 'package:ldkpi_news_app/models/berita_model.dart';
import 'package:provider/provider.dart';

class BeritaPage extends StatefulWidget {
  const BeritaPage({super.key});

  @override
  State<BeritaPage> createState() => _BeritaPageState();
}

class _BeritaPageState extends State<BeritaPage> {
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    final beritaProvider =
        Provider.of<BeritaPageProvider>(context, listen: false);

    beritaProvider.ambilBerita();

    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        beritaProvider.loadMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final beritaProvider =
        Provider.of<BeritaPageProvider>(context, listen: false);
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
                        controller: beritaProvider.controllerSearch,
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                            icon: const Icon(
                              Icons.search,
                            ),
                            onPressed: () => beritaProvider.searchNews(),
                          ),
                          hintText: AppLocalizations.of(context)!.keyword,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () => beritaProvider.searchNews(),
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
            child: Consumer<BeritaPageProvider>(
              builder: (context, beritaConsume, child) {
                return FutureBuilder(
                  future: beritaConsume.listFutureBerita,
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
                          beritaProvider.reset();
                          beritaProvider.ambilBerita();
                        },
                        child: ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          controller: _controller,
                          shrinkWrap: true,
                          itemCount: beritaProvider.isLoading
                              ? (beritaProvider.listBeritaTampil.length / 2)
                                      .ceil() +
                                  1
                              : (beritaProvider.listBeritaTampil.length / 2)
                                  .ceil(),
                          itemBuilder: (context, index) {
                            if (index * 2 >=
                                    beritaProvider.listBeritaTampil.length &&
                                beritaProvider.isLoading) {
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
                                            kontenBerita: beritaProvider
                                                .listBeritaTampil[index * 2],
                                          ),
                                        ),
                                      );
                                    },
                                    child: KontainerBerita(
                                      judul: beritaProvider
                                          .listBeritaTampil[index * 2].title,
                                      isi: beritaProvider
                                          .listBeritaTampil[index * 2].isi,
                                      gambar: beritaProvider
                                          .listBeritaTampil[index * 2].img,
                                    ),
                                  ),
                                  if ((index * 2) + 1 <
                                      beritaProvider.listBeritaTampil.length)
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BeritaKonten(
                                              kontenBerita: beritaProvider
                                                      .listBeritaTampil[
                                                  (index * 2) + 1],
                                            ),
                                          ),
                                        );
                                      },
                                      child: KontainerBerita(
                                        judul: beritaProvider
                                            .listBeritaTampil[(index * 2) + 1]
                                            .title,
                                        isi: beritaProvider
                                            .listBeritaTampil[(index * 2) + 1]
                                            .isi,
                                        gambar: beritaProvider
                                            .listBeritaTampil[(index * 2) + 1]
                                            .img,
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
                );
              },
              // child: FutureBuilder(
              //   future: beritaProvider.listFutureBerita,
              //   builder: (BuildContext context,
              //       AsyncSnapshot<List<BeritaModel>> snapshot) {
              //     if (snapshot.connectionState == ConnectionState.waiting) {
              //       return SizedBox(
              //         width: MediaQuery.of(context).size.width,
              //         height: MediaQuery.of(context).size.height,
              //         child: const CupertinoActivityIndicator(),
              //       );
              //     } else if (snapshot.data!.isEmpty) {
              //       return SizedBox(
              //         width: MediaQuery.of(context).size.width,
              //         height: MediaQuery.of(context).size.height,
              //         child: const Center(child: Text('Data not found')),
              //       );
              //     } else if (snapshot.hasError) {
              //       return SizedBox(
              //         width: MediaQuery.of(context).size.width,
              //         height: MediaQuery.of(context).size.height,
              //         child: const Center(child: Text('Error')),
              //       );
              //     } else {
              //       return RefreshIndicator(
              //         onRefresh: () async {
              //           beritaProvider.reset();
              //           setState(() {
              //             controllerSearch.text = '';
              //           });
              //           beritaProvider.ambilBerita();
              //         },
              //         child: ListView.builder(
              //           physics: const AlwaysScrollableScrollPhysics(),
              //           controller: _controller,
              //           shrinkWrap: true,
              //           itemCount: beritaProvider.isLoading
              //               ? (beritaProvider.listBeritaTampil.length / 2)
              //                       .ceil() +
              //                   1
              //               : (beritaProvider.listBeritaTampil.length / 2).ceil(),
              //           itemBuilder: (context, index) {
              //             if (index * 2 >=
              //                     beritaProvider.listBeritaTampil.length &&
              //                 beritaProvider.isLoading) {
              //               return const Center(
              //                 child: CupertinoActivityIndicator(),
              //               );
              //             } else {
              //               return Row(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   GestureDetector(
              //                     onTap: () {
              //                       Navigator.push(
              //                         context,
              //                         MaterialPageRoute(
              //                           builder: (context) => BeritaKonten(
              //                             kontenBerita: beritaProvider
              //                                 .listBeritaTampil[index * 2],
              //                           ),
              //                         ),
              //                       );
              //                     },
              //                     child: KontainerBerita(
              //                       judul: beritaProvider
              //                           .listBeritaTampil[index * 2].title,
              //                       isi: beritaProvider
              //                           .listBeritaTampil[index * 2].isi,
              //                       gambar: beritaProvider
              //                           .listBeritaTampil[index * 2].img,
              //                     ),
              //                   ),
              //                   if ((index * 2) + 1 <
              //                       beritaProvider.listBeritaTampil.length)
              //                     GestureDetector(
              //                       onTap: () {
              //                         Navigator.push(
              //                           context,
              //                           MaterialPageRoute(
              //                             builder: (context) => BeritaKonten(
              //                               kontenBerita:
              //                                   beritaProvider.listBeritaTampil[
              //                                       (index * 2) + 1],
              //                             ),
              //                           ),
              //                         );
              //                       },
              //                       child: KontainerBerita(
              //                         judul: beritaProvider
              //                             .listBeritaTampil[(index * 2) + 1]
              //                             .title,
              //                         isi: beritaProvider
              //                             .listBeritaTampil[(index * 2) + 1].isi,
              //                         gambar: beritaProvider
              //                             .listBeritaTampil[(index * 2) + 1].img,
              //                       ),
              //                     ),
              //                 ],
              //               );
              //             }
              //           },
              //         ),
              //       );
              //     }
              //   },
              // ),
            ),
          )
        ],
      ),
    );
  }
}
