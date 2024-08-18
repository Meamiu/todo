import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  // List of to-do items
  List<TodoItem> _items = [
    TodoItem(title: 'Buy groceries'),
    TodoItem(title: 'Walk the dog'),
    TodoItem(title: 'Read a book'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'),
      ),
      body: ListView(
        children: _items.map((item) => _buildTodoItem(item)).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodoItem,
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildTodoItem(TodoItem item) {
    return ListTile(
      leading: Checkbox(
        value: item.isChecked,
        onChanged: (bool? value) {
          setState(() {
            item.isChecked = value ?? false;
          });
        },
      ),
      title: Text(item.title),
    );
  }

  void _addTodoItem() {
    setState(() {
      _items.add(TodoItem(title: 'New Task'));
    });
  }
}

class TodoItem {
  String title;
  bool isChecked;

  TodoItem({
    required this.title,
    this.isChecked = false,
  });
}
