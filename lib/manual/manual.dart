import 'package:app_informativa_ite/const/fonts.dart';
import 'package:app_informativa_ite/const/nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Manual extends StatelessWidget {
  const Manual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: navBar('Manual de identidad gráfica'),
        child: SfPdfViewer.network(
            'https://www.ensenada.tecnm.mx/wp-content/uploads/2020/06/Manual_de_Identidad_Grafica-1.pdf'));
  }
}
