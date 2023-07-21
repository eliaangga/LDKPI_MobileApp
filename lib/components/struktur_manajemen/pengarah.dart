import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/components/struktur_manajemen/orang_manajemen.dart';
import 'package:ldkpi_news_app/models/anggota_manajemen.dart';

class Pengarah extends StatelessWidget {
  final List<AnggotaManajemen> model;
  const Pengarah({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: (model.length / 2).ceil(),
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrangManajemen(model: model[index * 2]),
                if ((index * 2) + 1 < model.length)
                  OrangManajemen(model: model[(index * 2) + 1]),
              ],
            );
          },
        )
      ],
    );
  }
}
