import 'package:flutter/material.dart';

class SamplePage6 extends StatefulWidget {
  @override
  _SamplePage6 createState() => _SamplePage6();
}

class _SamplePage6 extends State {
  bool bar = false;
  bool foo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page6"),
      ),
      body: Column(
        children: <Widget>[
          ExpansionTile(
            title: Text("hello"),
            onExpansionChanged: (bool changed) {
              setState(() {
                bar = false;
                foo = changed;
              });
            },
            children: <Widget>[
              CheckboxListTile(
                value: bar,
                onChanged: (checked) {
                  setState(() {
                    bar = checked!;
                  });
                },
                title: Text("bar"),
              ),
              CheckboxListTile(
                value: foo,
                onChanged: (checked) {
                  setState(() {
                    foo = checked!;
                  });
                },
                title: const Text("foo"),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text("説明"),
            children: <Widget>[
              Container(
                height: 50,
                child: Text("ExpansionTile"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
