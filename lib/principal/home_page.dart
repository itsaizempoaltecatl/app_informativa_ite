import 'package:app_informativa_ite/aviso_privacidad/aviso_privacidad.dart';
import 'package:app_informativa_ite/directorio/directorio.dart';
import 'package:app_informativa_ite/historia/historia_menu.dart';
import 'package:app_informativa_ite/manual/manual.dart';
import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';

import '../historia/antecedentes.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  final Map screens = {
    0: {'name': 'Historia', 'screen': const History()},
    1: {'name': 'Directorio', 'screen': const Directory()},
    2: {'name': 'Aviso de privacidad', 'screen': const Privacy()},
    3: {'name': 'Manual de identidad grafica', 'screen': const Manual()},
    4: {'name': 'Antecedentes', 'screen': const Past()}
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('${screens[currentPage]['name']}')),
        backgroundColor: const Color(0xFF1b396a),
      ),
      body: screens[currentPage]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1b396a),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedFontSize: 20,
        unselectedFontSize: 15,
        iconSize: 25,
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
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
    );
  }
}
