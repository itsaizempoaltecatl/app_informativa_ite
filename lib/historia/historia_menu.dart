// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:app_informativa_ite/const/fuentes.dart';
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
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double sizeWidth = mediaQuery.size.width;
    double sizeHeight = mediaQuery.size.height;
    return CupertinoPageScaffold(
      navigationBar: navBar('Historia'),
      child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
          child: ListView(
            physics: (sizeHeight <= 600)
                ? const ClampingScrollPhysics()
                : const NeverScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: sizeHeight <= 600 ? 50 : 150,
              ),
              ButtonMenu(
                  label: 'Antecedentes',
                  screen: const Past(),
                  sizeWhidth: sizeWidth),
              const SizedBox(
                height: 50,
              ),
              ButtonMenu(
                  label: 'Misión, Visión y Valores',
                  screen: const MisionVisionValues(),
                  sizeWhidth: sizeWidth),
              const SizedBox(
                height: 50,
              ),
              ButtonMenu(
                  label: 'Lema, logo y mascota',
                  screen: const MottoLogoPet(),
                  sizeWhidth: sizeWidth)
            ],
          )),
    );
  }
}

class ButtonMenu extends StatelessWidget {
  String label;
  var screen;
  double sizeWhidth;
  ButtonMenu(
      {Key? key,
      required this.label,
      required this.screen,
      required this.sizeWhidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
          primary: Colors.white,
          textStyle: textStyleMonserrat(
              size: sizeWhidth / (sizeWhidth > 330 ? 15 : 20),
              fontWeight: FontWeight.bold),
          backgroundColor: const Color(0xFF1b396a),
          minimumSize: Size(double.infinity, sizeWhidth / 10)),
      onPressed: () {
        Navigator.push(
            context, CupertinoPageRoute(builder: (context) => screen));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: Text(
          label,
        ),
      ),
    );
  }
}
