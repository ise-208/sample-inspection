import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // final String titile;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Sample'))
        ),
    // body: ,
    );
  }

  // const HomePage( {Key? key, required this.titile}): super(key: key);
}