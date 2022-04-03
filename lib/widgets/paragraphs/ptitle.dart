import 'package:flutter/material.dart';
import 'package:app_informativa_ite/const/fonts.dart';

class Ptitle extends StatelessWidget {
  final String? title;
  const Ptitle({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? "",
      style: TextStyle(
        fontSize: 30,
        color: blueIte,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
