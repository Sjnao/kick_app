import 'package:flutter/material.dart';
import 'package:kick_app/menu/main_menu_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KickApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainMenuPage(),
    );
  }
}