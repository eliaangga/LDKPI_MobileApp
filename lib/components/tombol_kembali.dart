import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TombolKembali extends StatelessWidget {
  const TombolKembali({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          width: 61,
          height: 18,
          decoration: BoxDecoration(
            color: const Color(0xff02275c),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Center(
            child: Text(
              '< ${AppLocalizations.of(context)!.kembali}',
              style: const TextStyle(
                fontFamily: 'Gotham',
                fontSize: 8,
                fontWeight: FontWeight.w700,
                height: 1.25,
                color: Color(0xffffffff),
                letterSpacing: 0.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
