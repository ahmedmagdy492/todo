import 'package:flutter/material.dart';
import 'package:todo/todo.dart';
import 'package:todo/todo_item.dart';

class TodoList extends StatelessWidget {
  final List<Todo> _todos;
  final Function _deleteTodo;
  final Function _changeStatus;

  TodoList(this._todos, this._deleteTodo, this._changeStatus);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ..._todos.map(
            (todo) => TodoItem(todo, _changeStatus, _deleteTodo),
          )
        ],
      ),
    );
  }
}
