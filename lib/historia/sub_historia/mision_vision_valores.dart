import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MisionVisionValues extends StatelessWidget {
  const MisionVisionValues({Key? key}) : super(key: key);

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
        backgroundColor: const Color(0xFF1b396a),
        middle: const Text('Misión, Visión y Valores',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
      child: Container(
        child: Text("fdfgdfg"),
      ),
    );
  }
}
