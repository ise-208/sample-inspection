import 'package:demo_todo/ui/hamburger_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // final String titile;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Sample')),
            drawer:Drawer(
              child: HamburgerMenu(),
            )
        ),
    );
  }
}