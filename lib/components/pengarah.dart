import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/models/struktur_manajemen_model.dart';

class Pengarah extends StatelessWidget {
  final StrukturManajemenModel model;
  const Pengarah({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    // return Text(model.listAnggota[0].nama);
    // return ListView.builder(
    //   itemCount: 2,
    //   itemBuilder: (context, index) {
    //     return Text(model.listAnggota[0].nama);
    //   },
    // );
    return Column(
      children: [
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: (model.listAnggota.length / 2).ceil(),
          itemBuilder: (context, index) {
            // return Text(model.listAnggota[index].nama);
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width / 8 - 15,
                        backgroundImage:
                            NetworkImage(model.listAnggota[index].foto),
                      ),
                      Text(model.listAnggota[index].jabatan),
                      Text(model.listAnggota[index].nama),
                    ],
                  ),
                )
              ],
            );
          },
        )
      ],
    );
  }
}
