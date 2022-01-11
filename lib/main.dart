import 'package:flutter/material.dart';

import 'package:todo/mainTodo.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      body: MainTodo(),
    ));
  }
}
