import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HamburgerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.yellowAccent),
          child: Text("List"),
        ),
        ListTile(title: Text("menu1")),
      ],
    );
  }
}