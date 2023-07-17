import 'package:flutter/material.dart';

class KontainerNegara extends StatelessWidget {
  String nama, gambar;
  KontainerNegara({Key? key, required this.nama, required this.gambar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 4 - 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: MediaQuery.of(context).size.width / 8 - 15,
            backgroundImage: NetworkImage(gambar),
          ),
          SizedBox(height: 8),
          Text(
            nama,
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
