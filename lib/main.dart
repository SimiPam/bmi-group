import 'package:bmi_app/style/my_theme_data.dart';
import 'package:bmi_app/screens/result_page.dart';
import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myThemeData,
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
