import 'package:flutter/material.dart';

class Pparagraph extends StatelessWidget {
  final String? paragraph;
  const Pparagraph({
    Key? key,
    this.paragraph,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      paragraph ?? "",
      style: const TextStyle(fontSize: 15),
    );
  }
}
