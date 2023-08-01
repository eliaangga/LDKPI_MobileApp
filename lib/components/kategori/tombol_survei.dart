import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/kategori/template_tombol.dart';
import 'package:ldkpi_news_app/screens/survei_layanan.dart';

class TombolSurvei extends StatelessWidget {
  const TombolSurvei({
    super.key,
  });

  void aksi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SurveiLayanan()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String nama = AppLocalizations.of(context)!.survei;
    IconData icon = Icons.design_services_outlined;

    return TemplateTombol(icon: icon, nama: nama, aksi: aksi);
  }
}
