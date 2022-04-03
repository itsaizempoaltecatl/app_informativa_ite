import 'package:flutter/material.dart';

class Psubtitle extends StatelessWidget {
  final String? subtitle;
  const Psubtitle({
    Key? key,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MediaQueryData queryData = MediaQuery.of(context);
    // double heightSpace = queryData.size.height / 10;
    // double widthSpace = queryData.size.width / 20;
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Text(
        subtitle ?? "",
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
