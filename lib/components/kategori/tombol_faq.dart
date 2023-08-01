import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ldkpi_news_app/components/kategori/template_tombol.dart';
import 'package:ldkpi_news_app/screens/faq.dart';

class TombolFaq extends StatelessWidget {
  const TombolFaq({
    super.key,
  });

  void aksi(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FAQ()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String nama = AppLocalizations.of(context)!.faq;
    IconData icon = Icons.question_answer;

    return TemplateTombol(icon: icon, nama: nama, aksi: aksi);
  }
}
