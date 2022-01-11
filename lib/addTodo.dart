import 'package:flutter/material.dart';

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
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black, width: 2, style: BorderStyle.solid)),
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
                  _addTodo(txt);
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
