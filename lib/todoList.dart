import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  final List<String> _todos;

  TodoList(this._todos);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ..._todos.map(
            (e) => Container(
              alignment: Alignment.center,
              height: 50,
              child: Text(
                e,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
