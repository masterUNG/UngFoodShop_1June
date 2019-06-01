import 'package:flutter/material.dart';
import 'package:ungfoodshop/screens/authen.dart';
import 'package:ungfoodshop/screens/register.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Authen(),
    );
  }
}
