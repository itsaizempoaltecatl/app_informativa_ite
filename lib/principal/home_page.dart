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
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(LineIcons.history), label: 'Historia'),
        BottomNavigationBarItem(
            icon: Icon(LineIcons.addressBook), label: 'Directorio'),
        BottomNavigationBarItem(
            icon: Icon(LineIcons.fileInvoice), label: 'Aviso'),
        BottomNavigationBarItem(icon: Icon(LineIcons.book), label: 'Manual')
      ]),
    );
  }
}
