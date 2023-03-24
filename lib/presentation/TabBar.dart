import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBar extends StatefulWidget {
  @override
  _TabBarState createState() => _TabBarState();
}


class _TabBarState extends State<TabBar> with SingleTickerProviderStateMixin {
  final List<Tab> _tabs = [
    Tab(text: 'Tab1'),
    Tab(text: 'Tab2')
  ];

  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();

  }


}
