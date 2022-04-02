import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Past extends StatefulWidget {
  const Past({Key? key}) : super(key: key);

  @override
  State<Past> createState() => _PastState();
}

class _PastState extends State<Past> {
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
        middle: const Text('Antecedentes',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
      child: SfPdfViewer.network(
        'https://www.ensenada.tecnm.mx/wp-content/themes/tecnm/Documentos/libro.pdf',
      ),
    );
  }
}
