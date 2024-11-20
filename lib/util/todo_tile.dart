import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  final String taskName;
  final bool taskCompleted;

  const TodoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged,
      required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red,
          ),
        ]),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
          child: SizedBox(
            height: 80,
            child: Row(
              children: [
                // checkbox
                Checkbox(
                    value: taskCompleted,
                    onChanged: onChanged,
                    activeColor: Colors.black),

                // task name
                Text(taskName,
                    style: TextStyle(
                        fontSize: 18,
                        decoration: taskCompleted
                            ? TextDecoration.lineThrough
                            : TextDecoration.none)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
