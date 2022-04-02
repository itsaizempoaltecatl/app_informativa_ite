import 'package:flutter/material.dart';
import 'package:app_informativa_ite/widgets/paragraph/bundle.dart';

class Paragraphs {
  Paragraphs();
  //TODO:Write widget get methods
  Widget paragraph({String? text}) {
    return Paragraph(
      paragraph: text ?? "",
    );
  }
  //TODO: repair ln 9 error
}
