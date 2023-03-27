import 'package:demo_todo/presentation/home_page.dart';
import 'package:flutter/cupertino.dart';

import '../presentation/sample_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    "/": (BuildContext context) => HomePage(),
    "sample": (BuildContext context) => SamplePage(),
  };
}