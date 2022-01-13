import 'package:flutter/material.dart';
import 'package:todo/todo.dart';

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
            (todo) => Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Checkbox(
                        value: todo.status,
                        onChanged: (val) => _changeStatus(val, todo.id)),
                    Expanded(
                      child: Tooltip(
                        message: todo.title,
                        child: Text(
                          todo.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              decoration: todo.status
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => _deleteTodo(todo.id),
                      icon: Icon(Icons.delete),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
