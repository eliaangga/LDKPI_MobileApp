import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/kategori/template_tombol.dart';
import 'package:ldkpi_news_app/screens/visi_misi.dart';

class TombolVisiMisi extends StatelessWidget {
  const TombolVisiMisi({
    super.key,
  });

  void aksi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const VisiMisi()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String nama = AppLocalizations.of(context)!.visi_misi;
    IconData icon = Icons.business_outlined;

    return TemplateTombol(icon: icon, nama: nama, aksi: aksi);
  }
}
