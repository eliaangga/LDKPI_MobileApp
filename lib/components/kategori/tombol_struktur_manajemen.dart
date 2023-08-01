import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/kategori/template_tombol.dart';
import 'package:ldkpi_news_app/screens/struktur_manajemen_page.dart';

class TombolStrukturManajemen extends StatelessWidget {
  const TombolStrukturManajemen({
    super.key,
  });

  void aksi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const StrukturManajemen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String nama = AppLocalizations.of(context)!.struktur_manajemen;
    IconData icon = Icons.account_tree;

    return TemplateTombol(icon: icon, nama: nama, aksi: aksi);
  }
}
