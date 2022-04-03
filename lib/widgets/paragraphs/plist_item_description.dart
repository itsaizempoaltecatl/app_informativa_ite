import 'package:flutter/material.dart';

Widget lsymbol = const Text('');

class PlistItemDescription extends StatelessWidget {
  final Icon? icon;
  final int? number;
  final String? itemName;
  final String? itemDescription;
  const PlistItemDescription({
    Key? key,
    this.icon,
    this.number,
    this.itemName,
    this.itemDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: const TextStyle(
          color: Colors.black,
        ),
        children: [
          WidgetSpan(
            baseline: TextBaseline.alphabetic,
            child: icon ??
                (number != null
                    ? Text(
                        number.toString() + '. ',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      )
                    : lsymbol),
          ),
          TextSpan(
            text: itemName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const TextSpan(
            text: ' ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          TextSpan(
            text: itemDescription,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
