import 'package:app_informativa_ite/const/fonts.dart';
import 'package:app_informativa_ite/bundle_main_views.dart';

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
        backgroundColor: blueIte,
        inactiveColor: Colors.white,
        activeColor: const Color(0xFFC0C4C6),
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
              return const CupertinoPageScaffold(child: History());
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(child: Directory());
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(child: Privacy());
            });
          case 3:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(child: Manual());
            });
          default:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(child: History());
            });
        }
      },
    );
  }
}
