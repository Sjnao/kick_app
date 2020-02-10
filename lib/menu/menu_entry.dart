import 'package:flutter/material.dart';

class MenuEntry extends StatelessWidget {
  final String tooltip;
  final Color color;
  final String text;
  final IconData icon;
  final Widget widget;

  const MenuEntry(
      {key,
      @required this.tooltip,
      @required this.color,
      @required this.text,
      @required this.icon,
      @required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: this.color, border: Border.all(color: Colors.white)),
        child: GestureDetector(
            onTap: () {
              goTo(context);
            },
            child: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  IconButton(
                    icon: Icon(this.icon),
                    color: Colors.black,
                    tooltip: this.tooltip,
                    onPressed: () => {goTo(context)},
                  ),
                  Text(
                    this.text,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ]))));
  }

  void goTo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => this.widget),
    );
  }
}
