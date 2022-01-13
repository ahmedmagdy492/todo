import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/addTodo.dart';
import 'package:todo/todo.dart';
import 'package:todo/todoList.dart';
import 'package:intl/intl_browser.dart';

class MainTodo extends StatefulWidget {
  @override
  _MainTodoState createState() => _MainTodoState();
}

class _MainTodoState extends State<MainTodo> {
  final List<Todo> _todos = [
    Todo(
        id: "12348",
        title: "Study Data Structures and Algorithems: Grokking Algorithems",
        date: DateTime.now(),
        status: false),
  ];

  void _deleteTodo(String id) {
    setState(() {
      Todo todo = _todos.where((element) => element.id == id).first;
      _todos.remove(todo);
    });
  }

  void _changeStatus(bool value, String id) {
    setState(() {
      Todo todo = _todos.where((element) => element.id == id).first;
      todo.status = value;
    });
  }

  void _addTodo(Todo todo) {
    setState(() {
      todo.id = DateFormat().format(DateTime.now());
      _todos.add(todo);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TodoList(_todos, _deleteTodo, _changeStatus),
        AddTodo(_addTodo)
      ],
    );
  }
}
