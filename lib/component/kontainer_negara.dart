import 'package:flutter/material.dart';

class KontainerNegara extends StatelessWidget {
  String nama, gambar;
  KontainerNegara({super.key, required this.nama, required this.gambar});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 4 - 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(180),
              child: Image(
                image: NetworkImage(gambar),
                fit: BoxFit.fill,
              )),
          Text(
            nama,
            softWrap: true,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
