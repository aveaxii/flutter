import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final Function(bool?)? onChanged;

  final String taskName;
  final bool taskCompleted;

  const TodoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          // checkbox
          Checkbox(
            value: taskCompleted,
            onChanged: onChanged,
          ),

          // task name
          Text(taskName),
        ],
      ),
    );
  }
}
