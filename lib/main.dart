import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoListPage(),
    );
  }
}

class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("リスト一覧"),
      ),
      body: ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              title: Text("にんじんを買う"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("玉ねぎを買う"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("ジャガイモを買う"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("カレールーを買う"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return TodoAddPage();
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class TodoAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("リスト追加画面(クリックで戻る)"),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
