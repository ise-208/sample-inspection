import 'package:flutter/material.dart';

class SamplePage7 extends StatefulWidget {
  @override
  _SamplePage7 createState() => _SamplePage7();
}

class _SamplePage7 extends State {
  String _type = "";
  bool isPressed = false;

  void _handleRadio(String e) => setState(() {
        _type = e;
      });

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
            ElevatedButton(
                onPressed: () => {print("button1")}, child: Text("button1")),
            ElevatedButton(
                onPressed: () => {print("button2")}, child: Text("button2")),
            OutlinedButton(
              onPressed: () => {},
              style: OutlinedButton.styleFrom(
                primary: Colors.red,
                shape: const StadiumBorder(),
              ),
              child: Text("button3"),
            )
          ],
        ),
      ),
    );
  }
}
