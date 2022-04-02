import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  final String subtitle;
  const Subtitle({
    Key? key,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
