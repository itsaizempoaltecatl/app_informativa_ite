import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_informativa_ite/widgets/paragraph.dart';

class MisionVisionValues extends StatelessWidget {
  const MisionVisionValues({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    double heightSpace = queryData.size.height / 10;
    double widthSpace = queryData.size.width / 20;
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
        margin: EdgeInsets.only(
          top: heightSpace / 2,
          bottom: heightSpace / 2,
          left: widthSpace / 2,
          right: widthSpace / 2,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // Title(title: 'title'),
            // Subtitle(subtitle: 'subtitle'),
            // Paragraph(paragraph: 'paragraph'),
            //TODO: get import paragraph/bundle to work
          ],
        ),
      ),
    );
  }
}
