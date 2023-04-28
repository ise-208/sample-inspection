// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
//
// // import 'firebase_options.dart';
//
// class FirePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("firepage"),
//       ),
//       body: Row(children: [
//         TextButton(
//           onPressed: () {
//             FirebaseFirestore.instance
//                 .collection("sample")
//                 .doc("get")
//                 .get()
//                 .then((value) => value.get("data"));
//           },
//           child: const Text("GET実行", style: TextStyle(fontSize: 50)),
//         ),
//         TextButton(
//           onPressed: () {
//             FirebaseFirestore.instance
//                 .collection("sample")
//                 .doc("set")
//                 .set({"set": "string"});
//           },
//           child: const Text("SET実行", style: TextStyle(fontSize: 50)),
//         ),
//         TextButton(
//           onPressed: () {
//             FirebaseFirestore.instance
//                 .collection("sample")
//                 .add({"add": "string"});
//           },
//           child: const Text("ADD実行", style: TextStyle(fontSize: 50)),
//         ),
//         TextButton(
//           onPressed: () {
//             FirebaseFirestore.instance.collection("sample").doc("add").delete();
//           },
//           child: const Text("DELETE実行", style: TextStyle(fontSize: 50)),
//         ),
//       ]),
//     );
//   }
// }
