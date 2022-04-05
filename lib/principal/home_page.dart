// ignore_for_file: must_be_immutable

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
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double sizeScreen = mediaQuery.size.width;
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        height: (sizeScreen >= 600) ? 80 : sizeScreen / 7,
        backgroundColor: const Color(0xFF1b396a),
        inactiveColor: Colors.white,
        activeColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: ContentBottomNavigationBarItem(
            iconData: LineIcons.history,
            title: 'Historia',
            sizeScreen: sizeScreen,
          )),
          BottomNavigationBarItem(
              icon: ContentBottomNavigationBarItem(
            iconData: LineIcons.addressBook,
            title: 'Directorio',
            sizeScreen: sizeScreen,
          )),
          BottomNavigationBarItem(
              icon: ContentBottomNavigationBarItem(
            iconData: LineIcons.fileInvoice,
            title: 'Aviso',
            sizeScreen: sizeScreen,
          )),
          BottomNavigationBarItem(
              icon: ContentBottomNavigationBarItem(
            iconData: LineIcons.book,
            title: 'Manual',
            sizeScreen: sizeScreen,
          )),
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

class ContentBottomNavigationBarItem extends StatelessWidget {
  IconData iconData;
  String title;
  double sizeScreen;
  ContentBottomNavigationBarItem(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.sizeScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Icon(
          iconData,
          color: Colors.white,
          size: (sizeScreen >= 600) ? 40 : sizeScreen / 15,
        ),
        Text(
          title,
          style: textStyleMonserrat(
            size: (sizeScreen >= 600) ? 25 : sizeScreen / 30,
          ),
        )
      ],
    );
  }
}
