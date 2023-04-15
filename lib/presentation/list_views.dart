import 'package:flutter/material.dart';

class ListViews extends StatelessWidget {
  Function onPressed;

  ListViews(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, child: listViewBuilder());
  }

  Widget buildListView() {
    return ListView(
      children: [
        ListViews(onPressed),
        ListViews(onPressed),
      ],
    );
  }

  final items = [0, 1, 2, 3, 4, 5];

  Widget listViewBuilder() {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListViews(onPressed);
        });
  }
}
