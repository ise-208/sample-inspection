import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';

class SamplePage6 extends StatefulWidget {
  @override
  _SamplePage6 createState() => _SamplePage6();
}

class _SamplePage6 extends State {
  bool bar = false;
  bool foo = false;

  double _value = 0.0;
  double _startValue = 0.0;
  double _endValue = 0.0;

  String _valueString = "";
  _model listState = _ListModel().first;

  void _changeSlide(double e) => setState(() {
        _value = e;
      });

  void _startSlide(double e) => setState(() {
        _startValue = e;
      });

  void _endSlide(double e) => setState(() {
        _endValue = e;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page6"),
      ),
      body: Column(
        children: <Widget>[
          ExpansionTile(
            title: Text("hello"),
            onExpansionChanged: (bool changed) {
              setState(() {
                bar = false;
                foo = changed;
              });
            },
            children: <Widget>[
              CheckboxListTile(
                value: bar,
                onChanged: (checked) {
                  setState(() {
                    bar = checked!;
                  });
                },
                title: Text("bar"),
              ),
              CheckboxListTile(
                value: foo,
                onChanged: (checked) {
                  setState(() {
                    foo = checked!;
                  });
                },
                title: const Text("foo"),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text("説明"),
            children: <Widget>[
              Container(
                height: 50,
                child: Text("ExpansionTile"),
              )
            ],
          ),
          ExpansionTile(
            title: const Text("説明"),
            children: <Widget>[
              Container(
                  height: 50,
                  child: Slider(
                    min: 0,
                    max: 10,
                    activeColor: Colors.green,
                    inactiveColor: Colors.red,
                    divisions: 10,
                    label: '${_value}',
                    value: _value,
                    onChanged: _changeSlide,
                    onChangeStart: _startSlide,
                    onChangeEnd: _endSlide,
                  )),
              Container(
                child: CupertinoButton(
                  child: Text("Buttonテスト"),
                  onPressed: () {
                    showMaterialScrollPicker(
                        context: context,
                        items: _ListModel(),
                        selectedItem: listState);
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _model {
  const _model(this.name, this.code);

  final String code;
  final String name;

  @override
  String toString() => name;
}

List<_model> _ListModel() {
  List<_model> usStates = <_model>[
    _model('apple', '1'),
    _model('banana', '2'),
  ];
  return usStates;
}
