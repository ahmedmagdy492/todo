import 'package:flutter/material.dart';
import 'package:todo/addTodo.dart';
import 'package:todo/todoList.dart';

class MainTodo extends StatefulWidget {
  @override
  _MainTodoState createState() => _MainTodoState();
}

class _MainTodoState extends State<MainTodo> {
  final List<String> _todos = ["Value1", "Value2", "Value3"];

  void _addTodo(String value) {
    setState(() {
      _todos.add(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TodoList(_todos), AddTodo(_addTodo)],
    );
  }
}
