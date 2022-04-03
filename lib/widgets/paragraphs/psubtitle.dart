import 'package:flutter/material.dart';

class Psubtitle extends StatelessWidget {
  final String? subtitle;
  const Psubtitle({
    Key? key,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle ?? "",
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}