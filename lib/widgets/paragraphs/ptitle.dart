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
    // MediaQueryData queryData = MediaQuery.of(context);
    // double heightSpace = queryData.size.height / 10;
    // double widthSpace = queryData.size.width / 20;
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Text(
        title ?? "",
        style: TextStyle(
          fontSize: 30,
          color: blueIte,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
