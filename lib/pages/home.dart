import 'package:flutter/material.dart';
import 'package:flutter_test1/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: const Text('TODO'),
          elevation: 0,
          backgroundColor: Colors.yellow[600],
        ),
        body: ListView(children: [
          TodoTile(
            taskName: 'Test',
            taskCompleted: true,
            onChanged: (p0) {},
          ),
        ]));
  }
}
