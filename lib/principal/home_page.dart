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
        items: [
          BottomNavigationBarItem(
              icon: ContentBottomNavigationBarItem(
            iconData: LineIcons.history,
            title: 'Historia',
          )),
          BottomNavigationBarItem(
              icon: ContentBottomNavigationBarItem(
            iconData: LineIcons.addressBook,
            title: 'Directorio',
          )),
          BottomNavigationBarItem(
              icon: ContentBottomNavigationBarItem(
            iconData: LineIcons.fileInvoice,
            title: 'Aviso',
          )),
          BottomNavigationBarItem(
              icon: ContentBottomNavigationBarItem(
            iconData: LineIcons.book,
            title: 'Manual',
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
  ContentBottomNavigationBarItem(
      {Key? key, required this.iconData, required this.title})
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
          size: 30,
        ),
        Text(
          title,
          style: textStyleMonserrat(size: 15, color: Colors.white),
        )
      ],
    );
  }
}
