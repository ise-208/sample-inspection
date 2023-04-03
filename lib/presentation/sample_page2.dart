import 'package:flutter/material.dart';

class SamplePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sample2')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("object"),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
