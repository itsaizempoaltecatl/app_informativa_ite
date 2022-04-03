import 'package:app_informativa_ite/widgets/paragraphs/bundle.dart';

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
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 3),
      child: RichText(
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
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: fontSizeName,
                          ),
                        )
                      : lsymbol),
            ),
            TextSpan(
              text: itemName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontSizeName,
              ),
            ),
            TextSpan(
              text: ' ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontSizeName,
              ),
            ),
            TextSpan(
              text: itemDescription,
              style: TextStyle(
                color: Colors.black,
                fontSize: fontSizeDescription,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
