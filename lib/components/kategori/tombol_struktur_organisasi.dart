import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/kategori/template_tombol.dart';
import 'package:ldkpi_news_app/screens/struktur_organisasi.dart';

class TombolStrukturOrganisasi extends StatelessWidget {
  const TombolStrukturOrganisasi({
    super.key,
  });

  void aksi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const StrukturOrganisasi()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String nama = AppLocalizations.of(context)!.struktur_organisasi;
    IconData icon = Icons.groups_2_outlined;

    return TemplateTombol(icon: icon, nama: nama, aksi: aksi);
  }
}
