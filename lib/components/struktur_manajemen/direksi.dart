import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/components/struktur_manajemen/orang_manajemen.dart';
import 'package:ldkpi_news_app/models/anggota_manajemen.dart';

class Direksi extends StatelessWidget {
  final List<AnggotaManajemen> model;
  const Direksi({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    AnggotaManajemen ketua = model.elementAt(0);
    List<AnggotaManajemen> jajaran = model.sublist(1, model.length);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrangManajemen(model: ketua),
          ],
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: (jajaran.length / 2).ceil(),
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrangManajemen(model: jajaran[index * 2]),
                if ((index * 2) + 1 < model.length)
                  OrangManajemen(model: jajaran[(index * 2) + 1]),
              ],
            );
          },
        )
      ],
    );
  }
}
