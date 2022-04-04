import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';

import '../widgets/paragraphs/bundle.dart';

CupertinoNavigationBar navBar(String title,
    {BuildContext? popContext, BuildContext? pushContext, Widget? pushPage}) {
  return CupertinoNavigationBar(
    backgroundColor: blueIte,
    middle: Text(
      title,
      style: textStyleMonserrat(size: 20),
    ),
    leading: popContext != null
        ? CupertinoNavigationBarBackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(popContext);
            },
          )
        : null,
    trailing: pushContext != null
        ? CupertinoButton(
            onPressed: () {
              Navigator.push(pushContext,
                  CupertinoPageRoute(builder: (context) => pushPage!));
            },
            child: const Icon(
              LineIcons.sitemap,
              color: Colors.white,
            ))
        : null,
  );
}
