import 'package:app_informativa_ite/const/nav_bar.dart';
import 'package:flutter/cupertino.dart';

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
      navigationBar: navBar('Antecedentes', popContext: context),
      child: SfPdfViewer.network(
        'https://www.ensenada.tecnm.mx/wp-content/themes/tecnm/Documentos/libro.pdf',
      ),
    );
  }
}
