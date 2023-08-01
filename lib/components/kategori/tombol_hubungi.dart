import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/kategori/template_tombol.dart';
import 'package:ldkpi_news_app/screens/support_center.dart';

class TombolHubungi extends StatelessWidget {
  const TombolHubungi({
    super.key,
  });

  void aksi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CallUs()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String nama = AppLocalizations.of(context)!.hubungi;
    IconData icon = Icons.call_end;

    return TemplateTombol(icon: icon, nama: nama, aksi: aksi);
  }
}
