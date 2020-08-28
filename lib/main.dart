import 'package:flutter/material.dart';
import 'package:flutter_ui_day_one/pages.dart';
import 'package:flutter_ui_day_one/ui_3.dart';
import 'package:flutter_ui_day_one/ui_5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Color(0xfff79631),
          ),
        ),
        body: UI_5(),
      ),
    );
  }
}
