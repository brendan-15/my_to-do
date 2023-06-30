import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?)? checkboxCallback;
  final void Function() longPressCallback;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          decoration: isChecked ? TextDecoration.lineThrough : null,
          decorationColor: Colors.purple,
          decorationThickness: 4,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.purple,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
