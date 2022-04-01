import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
      color: Colors.cyanAccent,
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
                text: 'Aviso de Privacidad ', style: TextStyle(fontSize: 20.0)),
          ),
            const SizedBox(height: 10,),
            
            
        ],
      ),
    );
  }
}
