// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

int x = 0;

class MyDrawer extends StatefulWidget {
  final Function _function;
   bool _swVal = false;

  MyDrawer(this._function, this._swVal);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  // ThemeMode tm = ThemeMode.light;


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
              value: widget._swVal,
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
