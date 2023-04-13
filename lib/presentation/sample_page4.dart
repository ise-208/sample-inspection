import 'package:flutter/material.dart';

class SamplePage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'foo',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                "bar",
                style: TextStyle(color: Colors.yellow),
              ),
              Container(
                child: Text(
                  calc(2).toString(),
                ),
              ),
              Container(
                child: Text(words("str")),
              )
            ],
          ))
        ],
      ),
    );
    return Scaffold(
        appBar: AppBar(title: Text('Sample4')),
        body: ListView(
          children: [titleSection],
        ));
  }

  static const _commonTextStyle = TextStyle(
    color: Colors.green,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w900,
  );

  static int calc(int i) {
    return 1;
  }

  static String words(String str) {
    return "$str __!  $str";
  }
}
