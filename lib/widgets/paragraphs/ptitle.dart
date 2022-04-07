import 'package:app_informativa_ite/widgets/paragraphs/bundle.dart';

class Ptitle extends StatelessWidget {
  final String? title;
  const Ptitle({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Text(
        title ?? "",
        style: textStyleMonserrat(
            size: titleFontSize, color: blueIte, fontWeight: FontWeight.bold),
      ),
    );
  }
}
