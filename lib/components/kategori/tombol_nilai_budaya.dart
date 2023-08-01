import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/kategori/template_tombol.dart';
import 'package:ldkpi_news_app/screens/nilai_budaya.dart';

class TombolNilaiBudaya extends StatelessWidget {
  const TombolNilaiBudaya({
    super.key,
  });

  void aksi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NilaiBudaya()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String nama = AppLocalizations.of(context)!.nilai_budaya;
    IconData icon = Icons.credit_score_outlined;

    return TemplateTombol(icon: icon, nama: nama, aksi: aksi);
  }
}
