import 'package:app_informativa_ite/widgets/paragraphs/bundle.dart';

class Paragraphs {
  Widget title(String? title) {
    return Ptitle(title: title);
  }

  Widget subtitle(String? subtitle) {
    return Psubtitle(subtitle: subtitle);
  }

  Widget paragraph(String? text, {TextAlign? textAlign}) {
    return Pparagraph(paragraph: text, textAlign: textAlign);
  }

  Widget listItemDescription(
      {Icon? icon, int? number, String? itemName, String? itemDescription}) {
    return PlistItemDescription(
        icon: icon,
        number: number,
        itemName: itemName,
        itemDescription: itemDescription);
  }
}
