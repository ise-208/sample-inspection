import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  Function onPressed;

  ListItem(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3)]),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(right: 10),
            child: imageWiget(),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)]),
          )
        ],
      ),
    );
  }

  Widget imageWiget() {
    return ClipRect(
      child: FittedBox(
        child: Image.asset("/image"),
        fit: BoxFit.cover,
      ),
    );
  }
}
