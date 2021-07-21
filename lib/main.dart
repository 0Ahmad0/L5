import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui_5a/constants/const.dart';

import 'pages/sign_in_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInPage(),
    );
  }
}
