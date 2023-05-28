import 'package:demo_todo/presentation/sample_page7.dart';
import 'package:demo_todo/presentation/sample_page8.dart';
import 'package:flutter/material.dart';

class SamplePage9 extends StatefulWidget {
  const SamplePage9({Key? key}) : super(key: key);

  @override
  State<SamplePage9> createState() => _SamplePage9State();
}

class _SamplePage9State extends State<SamplePage9> {
  int selectIndex = 0;
  List<Widget> pageList = [SamplePage8(), SamplePage7()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sample9")),
      body: pageList[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hourglass_full_outlined),
            label: '',
          ),
        ],
        currentIndex: selectIndex,
        onTap: (index) {
          setState(() {
            selectIndex = index;
          });
        },
      ),
    );
  }
}
