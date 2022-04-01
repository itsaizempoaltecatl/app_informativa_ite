import 'package:app_informativa_ite/historia/sub_historia/antecedentes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color(0xFF1b396a),
        middle: Text(
          'Historia',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
          color: Colors.cyanAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => const Past()));
                  },
                  child: Text("Antecendentes")),
            ],
          )),
    );
  }
}
