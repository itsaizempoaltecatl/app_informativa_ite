// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:app_informativa_ite/const/fonts.dart';
import 'package:app_informativa_ite/historia/sub_historia/antecedentes.dart';
import 'package:app_informativa_ite/historia/sub_historia/lema_logo_mascota.dart';
import 'package:app_informativa_ite/historia/sub_historia/mision_vision_valores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const/nav_bar.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: navBar('Historia'),
      child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.fromLTRB(20, 100, 20, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ButtonMenu(label: 'Antecedentes', screen: const Past()),
              const SizedBox(
                height: 50,
              ),
              ButtonMenu(
                  label: 'Misión, Visión y Valores',
                  screen: const MisionVisionValues()),
              const SizedBox(
                height: 50,
              ),
              ButtonMenu(
                  label: 'Lema, logo y mascota', screen: const MottoLogoPet())
            ],
          )),
    );
  }
}

class ButtonMenu extends StatelessWidget {
  String label;
  var screen;
  ButtonMenu({Key? key, required this.label, required this.screen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
          primary: Colors.white,
          textStyle: const TextStyle(fontSize: 20),
          backgroundColor: const Color(0xFF1b396a),
          minimumSize: const Size(double.infinity, 70)),
      onPressed: () {
        Navigator.push(
            context, CupertinoPageRoute(builder: (context) => screen));
      },
      child: Text(
        label,
        style: const TextStyle(fontSize: 40),
      ),
    );
  }
}
