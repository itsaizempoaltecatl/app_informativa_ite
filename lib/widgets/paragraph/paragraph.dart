import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  final String paragraph;
  const Paragraph({
    Key? key,
    required this.paragraph,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      paragraph,
    );
  }
}
