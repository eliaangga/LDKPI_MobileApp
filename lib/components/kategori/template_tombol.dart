import 'package:flutter/material.dart';

class TemplateTombol extends StatelessWidget {
  final IconData icon;
  final String nama;
  final Function(BuildContext) aksi;
  const TemplateTombol({
    super.key,
    required this.icon,
    required this.nama,
    required this.aksi,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () => aksi(context),
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
          padding: const EdgeInsets.fromLTRB(19, 10, 19, 0),
          width: 165,
          height: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: Color(0x19000000),
                offset: Offset(0, 4),
                blurRadius: 2,
              ),
            ],
          ),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  width: 90,
                  height: 90,
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: Icon(
                      icon,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    nama,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'Gotham',
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      height: 1,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
