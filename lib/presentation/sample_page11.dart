import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';

class SamplePage11 extends StatefulWidget {
  const SamplePage11({Key? key}) : super(key: key);

  @override
  State<SamplePage11> createState() => _SamplePage11State();
}

class StateModel {
  const StateModel(this.strData, this.code);

  final String strData;
  final String code;

  @override
  String toString() {
    return 'StateModel{strData: $strData, code: $code}';
  }
}

List<StateModel> testList() {
  List<StateModel> list = <StateModel>[
    StateModel("10yymmdd", "1"),
    StateModel("20yymmdd", "2"),
    StateModel("30yymmdd", "3"),
  ];
  return list;
}

class _SamplePage11State extends State<SamplePage11> {
  final String _strData = "";
  StateModel _stateModel = testList().first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CupertinoButton"),
        ),
        body: Container(
          child: CupertinoButton(
              child: Text(_stateModel.strData),
              onPressed: () {
                showMaterialScrollPicker(
                    context: context,
                    items: testList(),
                    selectedItem: _stateModel,
                    title: "roll",
                    onChanged: (value) => setState(() {
                          _stateModel = value;
                        }));
              }),
        ));
  }
}
