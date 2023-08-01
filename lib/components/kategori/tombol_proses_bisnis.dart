import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/kategori/template_tombol.dart';
import 'package:ldkpi_news_app/screens/proses_bisnis_page.dart';

class TombolProsesBisnis extends StatelessWidget {
  const TombolProsesBisnis({
    super.key,
  });

  void aksi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProsesBisnis()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String nama = AppLocalizations.of(context)!.proses_bisnis;
    IconData icon = Icons.change_circle_outlined;

    return TemplateTombol(icon: icon, nama: nama, aksi: aksi);
  }
}
