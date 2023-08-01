import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/kategori/template_tombol.dart';
import 'package:ldkpi_news_app/screens/tugas_fungsi.dart';

class TombolTugasFungsi extends StatelessWidget {
  const TombolTugasFungsi({
    super.key,
  });

  void aksi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TugasFungsi()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String nama = AppLocalizations.of(context)!.tugas_fungsi;
    IconData icon = Icons.add_business;

    return TemplateTombol(icon: icon, nama: nama, aksi: aksi);
  }
}
