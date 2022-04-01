import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
      color: Colors.cyanAccent,
      child: Column(
        children: [
          RichText(
            text: const TextSpan(
              text: 'Aviso de Privacidad ',
            ),
          )
        ],
      ),
    );
  }
}
