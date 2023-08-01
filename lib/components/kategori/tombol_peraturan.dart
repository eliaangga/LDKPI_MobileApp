import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/kategori/template_tombol.dart';
import 'package:ldkpi_news_app/screens/peraturan.dart';

class TombolPeraturan extends StatelessWidget {
  const TombolPeraturan({
    super.key,
  });

  void aksi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Peraturan()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String nama = AppLocalizations.of(context)!.peraturan;
    IconData icon = Icons.rule;

    return TemplateTombol(icon: icon, nama: nama, aksi: aksi);
  }
}
