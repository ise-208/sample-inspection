import 'package:demo_todo/presentation/sample_page.dart';
import 'package:demo_todo/ui/hamburger_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // final String titile;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Sample')),
        drawer: Drawer(
          child: HamburgerMenu(),
        ),
        body: Center(
          child: TextButton(
            child: Text("遷移"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SamplePage()));
            },
          ),
        ),
      ),
    );
  }
}
