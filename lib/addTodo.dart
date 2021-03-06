import 'package:flutter/material.dart';

import 'todo.dart';

class AddTodo extends StatefulWidget {
  final Function _addTodo;

  AddTodo(this._addTodo);

  @override
  _AddTodoState createState() => _AddTodoState(_addTodo);
}

class _AddTodoState extends State<AddTodo> {
  final TextEditingController _controller = TextEditingController();
  final Function _addTodo;

  _AddTodoState(this._addTodo);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              controller: _controller,
              autofocus: true,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              onPressed: () {
                String txt = _controller.text;
                if (_controller.text != "") {
                  _controller.text = "";
                  _addTodo(
                      Todo(title: txt, status: false, date: DateTime.now()));
                }
              },
              child: Text("Add Todo"),
            ),
          )
        ],
      ),
    );
  }
}
