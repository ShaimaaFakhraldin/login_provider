import 'package:flutter/material.dart';
import 'package:login_provider/home.dart';
import 'package:login_provider/sign_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) {
      return SignInPovider();
    },
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  static const String _title = 'Provider Sign-In Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title, home: HomePage(), debugShowCheckedModeBanner: false);
  }
}
