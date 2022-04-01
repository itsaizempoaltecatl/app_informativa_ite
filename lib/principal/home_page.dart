import 'package:app_informativa_ite/aviso_privacidad/aviso_privacidad.dart';
import 'package:app_informativa_ite/directorio/directorio.dart';
import 'package:app_informativa_ite/historia/historia_menu.dart';
import 'package:app_informativa_ite/manual/manual.dart';
import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentScreen = 0;

  Map screens = {
    0: {'name': 'Historia', 'screen': const History()},
    1: {'name': 'Directorio', 'screen': const Directory()},
    2: {'name': 'Aviso de privacidad', 'screen': const Privacy()},
    3: {'name': 'Manual de identidad grafica', 'screen': const Manual()}
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('${screens[currentScreen]['name']}')),
          backgroundColor: const Color(0xFF1b396a),
        ),
        body: screens[currentScreen]['screen'],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: const Color(0xFF1b396a),
          ),
          child: BottomNavigationBar(
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
            currentIndex: currentScreen,
            onTap: (index) {
              setState(() {
                currentScreen = index;
              });
            },
          ),
        ));
  }
}
