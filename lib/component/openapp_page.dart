import 'package:flutter/material.dart';

class OpenApp extends StatelessWidget {
  const OpenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 2.5),
                width: 80,
                child: const Image(
                  image: AssetImage('assets/assets/images/kemenkeu.png'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10, left: 10),
                child: const Image(
                  image: AssetImage('assets/assets/images/ldkpi.png'),
                  width: 130,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Lembaga Dana Kerja Sama\nPembangunan Internasional',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF02347C),
    );
  }
}
