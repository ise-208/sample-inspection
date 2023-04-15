import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildItem(context, "1/1", "土曜日"),
          _buildItem(context, "1/2", "日曜日"),
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, String date, String dayWeek) {
    return InkWell(
      onTap: () => Navigator.push(context, "/" as Route<Object?>),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date),
            SizedBox(height: 4.0),
          ],
        ),
      ),
    );
  }

}