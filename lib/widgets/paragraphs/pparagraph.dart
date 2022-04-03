import 'package:flutter/material.dart';

class Pparagraph extends StatelessWidget {
  final String? paragraph;
  final TextAlign? textAlign;
  const Pparagraph({Key? key, this.paragraph, this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 4),
      child: Text(
        paragraph ?? "",
        textAlign: textAlign,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}
