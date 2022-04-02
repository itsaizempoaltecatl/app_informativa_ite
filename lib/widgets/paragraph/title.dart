import 'package:flutter/material.dart';
import 'package:app_informativa_ite/const/fonts.dart';

class Title extends StatelessWidget {
  final String title;
  const Title({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 30,
        color: blueIte,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
