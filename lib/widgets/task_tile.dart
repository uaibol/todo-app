import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String? taskTitle;
  final bool isChecked;
  final Function(bool?) checkBoxCallBack;
  final Function() longPressCallBack;
  TaskTile(
      {this.taskTitle,
      this.isChecked = false,
      required this.checkBoxCallBack,
      required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle.toString(),
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
