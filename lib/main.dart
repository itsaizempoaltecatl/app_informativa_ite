import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'principal/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return const CupertinoApp(
      title: 'App Informativa ITE',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
