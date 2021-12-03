// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'my_drawer.dart';

void main() => runApp(MyHomePage());


class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ThemeMode tm = ThemeMode.light;
  bool _swVal = false;

  void switchChange(bool value) {
    setState(() {
      _swVal = value;

      if (_swVal == false) {
        tm = ThemeMode.light;
        // print("${tm}");
      } else {
        tm = ThemeMode.dark;
        // print("${tm}");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Fulaih',
      home: Scaffold(
        appBar: AppBar(title: Text('Provider Theme Mode')),
        body: null,
        drawer: MyDrawer(switchChange, _swVal),
      ),
      themeMode: tm,
      theme: ThemeData(primaryColorLight: Colors.yellow),
      darkTheme: ThemeData(primaryColorDark: Colors.purple),
    );
  }
}
