import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Manual extends StatelessWidget {
  const Manual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: Color(0xFF1b396a),
          middle: Text(
            'Manual de identidad gráfica',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        child: SfPdfViewer.network(
            'https://www.ensenada.tecnm.mx/wp-content/uploads/2020/06/Manual_de_Identidad_Grafica-1.pdf'));
  }
}
