import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/models/anggota_manajemen.dart';

class OrangManajemen extends StatelessWidget {
  const OrangManajemen({
    super.key,
    required this.model,
  });

  final AnggotaManajemen model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      width: MediaQuery.of(context).size.width / 3 - 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: MediaQuery.of(context).size.width / 8 - 15,
            backgroundImage: NetworkImage(model.foto),
          ),
          Text(
            model.jabatan,
            textAlign: TextAlign.center,
          ),
          Text(model.nama, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
