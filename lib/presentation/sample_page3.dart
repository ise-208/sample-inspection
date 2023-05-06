import 'package:flutter/material.dart';

class SamplePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sample3')),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Text("Hello Sample3"),
            ),
            Container(
              width: double.infinity,
              child: const Text(
                "Hello Center",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              child: const Text(
                "Hello Right",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            DefaultTextStyle(
              style: _commonTextStyle,
              child: Container(
                child: Column(
                  children: const [
                    Text("1"),
                    Text("2"),
                    Text("3"),
                  ],
                ),
              ),
            ),
            DefaultTextStyle.merge(
                style: _commonTextStyle,
                child: Container(
                  color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [Text("4"), Text("5"), Text("6")],
                  ),
                )),
            _widgetArea(),
          ],
        ),
      ),
    );
  }

  static const _commonTextStyle = TextStyle(
    color: Colors.green,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w900,
  );
}

Widget _widgetArea() {
  return Container(
    margin: EdgeInsets.all(26),
    child: Row(
      children: <Widget>[
        Container(
          child: Text("AAAAA"),
        ),
        Container(
          child: Text("BBBBB"),
        ),
        Container(
          child: Text("CCCC"),
        ),
        Container(
            child: Column(
              children: [
                Text("DDDDD"),
                Text("EEEEE"),
              ],
            ))
      ],
    ),
  );
}
