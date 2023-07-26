import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppLocalizations.of(context)!.namaAppBarBarisSatu,
                  style: TextStyle(fontSize: 12)),
              Text(AppLocalizations.of(context)!.namaAppBarBarisDua,
                  style: TextStyle(fontSize: 12)),
            ],
          ),
        ),
      ],
      leadingWidth: 420,
      toolbarHeight: 80,
      leading: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 2.5),
            width: 40,
            child: Image(
              image: AssetImage(AppLocalizations.of(context)!.gambarAppBar),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10, left: 10),
            child: const Image(
              image: AssetImage('assets/assets/images/ldkpi.png'),
              width: 90,
            ),
          )
        ],
      ),
    );
  }
}
