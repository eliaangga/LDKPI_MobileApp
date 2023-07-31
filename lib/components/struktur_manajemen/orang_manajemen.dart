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
      margin: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width / 3 - 15,
      height: MediaQuery.of(context).size.height / 5,
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
            style: const TextStyle(
              fontFamily: 'Gotham',
              letterSpacing: 0.2,
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            model.nama,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Gotham',
              letterSpacing: 0.1,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
