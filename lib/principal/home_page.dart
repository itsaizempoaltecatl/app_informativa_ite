import 'package:app_informativa_ite/aviso_privacidad/aviso_privacidad.dart';
import 'package:app_informativa_ite/directorio/directorio.dart';
import 'package:app_informativa_ite/historia/historia_menu.dart';
import 'package:app_informativa_ite/manual/manual.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        height: 60,
        backgroundColor: const Color(0xFF1b396a),
        inactiveColor: Colors.white,
        activeColor: Colors.white,
        iconSize: 35,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                LineIcons.history,
                color: Colors.white,
              ),
              label: 'Historia'),
          BottomNavigationBarItem(
              icon: Icon(
                LineIcons.addressBook,
                color: Colors.white,
              ),
              label: 'Directorio'),
          BottomNavigationBarItem(
              icon: Icon(
                LineIcons.fileInvoice,
                color: Colors.white,
              ),
              label: 'Aviso'),
          BottomNavigationBarItem(
              icon: Icon(
                LineIcons.book,
                color: Colors.white,
              ),
              label: 'Manual')
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return const History();
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return const Directory();
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return const Privacy();
            });
          case 3:
            return CupertinoTabView(builder: (context) {
              return const Manual();
            });
          default:
            return CupertinoTabView(builder: (context) {
              return const History();
            });
        }
      },
    );
  }
}
