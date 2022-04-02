import 'package:app_informativa_ite/const/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MottoLogoPet extends StatelessWidget {
  const MottoLogoPet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: blueIte,
        middle: const Text('Lema, logo y mascota',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
      child: Container(
        child: Text("fdfgdfg"),
      ),
    );
  }
}
