import 'package:demo_todo/presentation/sample_page6.dart';
import 'package:flutter/material.dart';

class SamplePage7 extends StatefulWidget {
  @override
  _SamplePage7 createState() => _SamplePage7();
}

class _SamplePage7 extends State {
  String _type = "";
  bool isPressed = false;
  int count = 0;

  void _handleRadio(String e) => setState(() {
        _type = e;
      });

  void _counter1() {
    setState(() {
      count++;
    });
  }

  int _counter2(int count) {
    return count * 2;
  }

  int _counter3() {
    return count * count;
  }

  bool _booler() {
    return true;
  }

  IconData _changeIcon(String e) {
    IconData icon;
    switch (e) {
      case "thumb_up":
        icon = Icons.thumb_up;
        break;
      case "favorite":
        icon = Icons.favorite;
        break;
      case "cabin":
        icon = Icons.cabin;
        break;
      case "add":
        icon = Icons.add;
        break;
      case "credit_card":
        icon = Icons.credit_card;
        break;
      default:
        icon = Icons.thumb_up;
    }
    return icon;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Center(
              child:
                  Icon(_changeIcon(_type), color: Colors.orange, size: 100.0),
            ),
            Radio(
              value: "thumb_up",
              groupValue: _type,
              onChanged: (String? value) {
                _handleRadio(value!);
              },
              activeColor: Colors.blue,
            ),
            Radio(
              value: "favorite",
              groupValue: _type,
              onChanged: (String? value) {
                _handleRadio(value!);
              },
              activeColor: Colors.green,
            ),
            Radio(
              autofocus: true,
              value: "cabin",
              visualDensity: VisualDensity.adaptivePlatformDensity,
              groupValue: _type,
              onChanged: (String? value) {
                _handleRadio(value!);
              },
              activeColor: Colors.blue,
            ),
            Radio(
              value: "add",
              mouseCursor: MaterialStateMouseCursor.clickable,
              groupValue: _type,
              onChanged: (String? value) {
                _handleRadio(value!);
              },
              activeColor: Colors.green,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () => {print("button1")},
                      child: Text("button1")),
                  ElevatedButton(
                      onPressed: () => {_handleRadio("credit_card")},
                      child: const Text("button2")),
                  OutlinedButton(
                    onPressed: () => {_handleRadio("add")},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.red,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text("button3"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                      onPressed: () => {_counter1()},
                      child: Text("TextButton")),
                  ElevatedButton(
                      onPressed: () => {_counter2(count)},
                      child: Text("ElevatedButton")),
                  OutlinedButton(
                      onPressed: () => {_counter3()},
                      child: Text("OutlinedButton")),
                  OutlinedButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SamplePage6()))
                          },
                      child: Text("OutlinedButton"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
