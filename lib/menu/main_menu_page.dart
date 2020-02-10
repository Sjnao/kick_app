import 'package:flutter/material.dart';
import 'package:kick_app/history/history_page.dart';
import 'package:kick_app/menu/menu_entry.dart';
import 'package:kick_app/new_game/new_game_page.dart';
import 'package:kick_app/settings/settings_page.dart';

class MainMenuPage extends StatefulWidget {
  MainMenuPage({Key key}) : super(key: key);

  @override
  _MainMenuPageState createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  static const _kFontFam = 'KickApp';

  static const IconData soccer_ball = const IconData(0xf1e3, fontFamily: _kFontFam);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MenuEntry(tooltip: 'Start a new game', color: Colors.redAccent, text:'NEW GAME', icon: soccer_ball, widget: new NewGamePage(),),
                    MenuEntry(tooltip: 'History', color: Colors.blueAccent, text:'HISTORY', icon: Icons.history, widget: new HistoryPage(),),
                    MenuEntry(tooltip: 'setting', color: Colors.redAccent, text:'SETTINGS', icon: Icons.settings, widget: new SettingsPage()),
                  ]))),
    );
  }
}