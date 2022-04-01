import 'package:app_informativa_ite/classes/indexes.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
        color: Colors.cyanAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {}, child: Text("Antecendentes")),
          ],
        ));
  }
}
