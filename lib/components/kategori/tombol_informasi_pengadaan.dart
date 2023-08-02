import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/kategori/template_tombol.dart';
import 'package:ldkpi_news_app/screens/Informasi_pengadaan.dart';

class TombolInformasiPengadaan extends StatelessWidget {
  const TombolInformasiPengadaan({
    super.key,
  });

  void aksi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const InformasiPengadaan()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String nama = AppLocalizations.of(context)!.informasi_pengadaan;
    IconData icon = Icons.info_outline;

    return TemplateTombol(icon: icon, nama: nama, aksi: aksi);
  }
}
