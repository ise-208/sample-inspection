import 'package:demo_todo/presentation/detail.dart';
import 'package:demo_todo/presentation/sample_page1.dart';
import 'package:demo_todo/presentation/sample_page2.dart';
import 'package:demo_todo/ui/hamburger_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // final String titile;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Sample')),
        drawer: Drawer(
          child: HamburgerMenu(),
        ),
        body: Row(children: [
          TextButton(
              child: const Text("遷移"),
              onPressed: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SamplePage1()))
                  }),
          TextButton(
              onPressed: () => {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => SamplePage2()))
                  }, // pushReplacement 一方通行
              child: const Text("遷移2")),
          Detail()
        ]));
  }
}
