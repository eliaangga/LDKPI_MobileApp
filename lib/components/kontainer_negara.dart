import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/models/negara_model.dart';
import 'package:ldkpi_news_app/screens/detail_penerima_hibah.dart';

class KontainerNegara extends StatelessWidget {
  final NegaraModel model;
  KontainerNegara({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailPenerimaHibah(
                    negara: model,
                  )),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width / 4 - 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.width / 8 - 15,
              backgroundImage: NetworkImage(model.gambar),
            ),
            const SizedBox(height: 8),
            Text(
              model.nama,
              softWrap: true,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
