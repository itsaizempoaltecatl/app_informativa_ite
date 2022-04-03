import 'package:app_informativa_ite/widgets/paragraphs/bundle.dart';

class Psubtitle extends StatelessWidget {
  final String? subtitle;
  const Psubtitle({
    Key? key,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Text(
        subtitle ?? "",
        style: TextStyle(
          fontSize: subtitleFontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
