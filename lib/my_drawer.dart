// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeMode tm = ThemeMode.light;
bool _swVal = false;
int x = 0;

class MyDrawer extends StatefulWidget {
  final Function _function;

  MyDrawer(this._function);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    print("x = ${x + 1}");
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
              onChanged: (bool val) => widget._function(val),
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
