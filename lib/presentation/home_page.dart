import 'package:demo_todo/presentation/sample_page1.dart';
import 'package:demo_todo/presentation/sample_page2.dart';
import 'package:demo_todo/presentation/sample_page3.dart';
import 'package:demo_todo/presentation/sample_page4.dart';
import 'package:demo_todo/presentation/sample_page5.dart';
import 'package:demo_todo/presentation/sample_page6.dart';
import 'package:demo_todo/presentation/sample_page7.dart';
import 'package:demo_todo/presentation/sample_page8.dart';
import 'package:demo_todo/ui/hamburger_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // final String titile;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
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
          TextButton(
              onPressed: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SamplePage3()))
                  },
              child: const Text("遷移3")),
          TextButton(
              onPressed: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SamplePage4()))
                  },
              child: const Text("遷移4")),
          TextButton(
              onPressed: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SamplePage5()))
                  },
              child: const Text("遷移5")),
          TextButton(
              onPressed: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SamplePage6()))
                  },
              child: const Text("遷移6")),
          TextButton(
              onPressed: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SamplePage7()))
                  },
              child: const Text("遷移7")),
          TextButton(
              onPressed: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SamplePage8()))
                  },
              child: const Text("遷移8")),
        ]));
  }
}
