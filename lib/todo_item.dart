import 'package:flutter/material.dart';
import 'package:todo/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo _todo;
  final Function _changeStatus;
  final Function _deleteTodo;

  TodoItem(this._todo, this._changeStatus, this._deleteTodo);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Checkbox(
                value: _todo.status,
                onChanged: (val) => _changeStatus(val, _todo.id)),
            Expanded(
              child: Tooltip(
                message: _todo.title,
                child: Text(
                  _todo.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: _todo.status
                          ? TextDecoration.lineThrough
                          : TextDecoration.none),
                ),
              ),
            ),
            IconButton(
              onPressed: () => _deleteTodo(_todo.id),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
