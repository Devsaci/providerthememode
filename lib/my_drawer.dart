import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool _swVal = false;

  ThemeMode tm = ThemeMode.light;

  void switchChange(bool value) {
    setState(() {
      _swVal = value;

      if (_swVal = false) {
        tm = ThemeMode.light;
        print("$tm");
      } else {
        tm = ThemeMode.dark;
        print("$tm");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(40.0),
              child: Text("Light"),
            ),
            Switch(
              value: _swVal,
              onChanged: switchChange,
              activeColor: Colors.black,
              inactiveThumbColor: Colors.blue,
            ),
            Padding(
              padding: EdgeInsets.all(40.0),
              child: Text("Dark"),
            ),
          ],
        ),
      ),
    );
  }
}
