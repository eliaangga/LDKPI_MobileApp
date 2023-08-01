import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/kategori/template_tombol.dart';
import 'package:ldkpi_news_app/screens/penerima_hibah.dart';

class TombolPenerimaHibah extends StatelessWidget {
  const TombolPenerimaHibah({
    super.key,
  });

  void aksi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PenerimaHibah()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String nama = AppLocalizations.of(context)!.penerima_hibah;
    IconData icon = Icons.money_sharp;
    return TemplateTombol(icon: icon, nama: nama, aksi: aksi);
  }
}
