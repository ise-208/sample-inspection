import 'package:demo_todo/presentation/sample_page1.dart';
import 'package:flutter/material.dart';

class SamplePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text('Sample2')),
      body: Container(
        color: Colors.greenAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
              child: InkWell(
                onTap: () => {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SamplePage1())),
                },
                child: Text("遷移"),
              ),
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
              child: Text("2"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("object"),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ));
  }
}
