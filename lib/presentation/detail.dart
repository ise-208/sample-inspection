import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  // Function closeAction;
  //
  // Detail(this.closeAction);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(0, 0, 0, 0.5),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)]),
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
