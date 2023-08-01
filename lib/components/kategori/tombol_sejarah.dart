import 'package:flutter/material.dart';
import 'package:ldkpi_news_app/components/kategori/template_tombol.dart';
import 'package:ldkpi_news_app/screens/sejarah.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TombolSejarah extends StatelessWidget {
  const TombolSejarah({
    super.key,
  });

  void aksi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Sejarah()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String nama = AppLocalizations.of(context)!.sejarah;
    IconData icon = Icons.history;

    return TemplateTombol(icon: icon, nama: nama, aksi: aksi);
  }
}
