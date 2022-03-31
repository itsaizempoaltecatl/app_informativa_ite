import 'package:app_informativa_ite/historia/historia_menu.dart';
import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  Map screens = {
    0: {'name': 'Historia', 'screen': const History()}
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
        bottomNavigationBar: Theme(
          data:
              Theme.of(context).copyWith(canvasColor: const Color(0xFF1b396a)),
          child: BottomNavigationBar(items: const [
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
          ]),
        ));
  }
}
