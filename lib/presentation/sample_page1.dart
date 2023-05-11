import 'package:flutter/material.dart';

class SamplePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page1")),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 4,
        mainAxisSpacing: 5,
        shrinkWrap: true,
        children: List.generate(
            20,
            (index) => Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.green),
                  child: GridTile(
                    child: Icon(Icons.add),
                    footer: Center(
                      child: Text(
                        "Message $index",
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
