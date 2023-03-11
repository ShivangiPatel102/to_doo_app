import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final VoidCallback longPressCallback;
  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback, required this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 22.0,
          fontFamily: "Rubik",
          // fontWeight: FontWeight.w400,

        ),

      ),
      trailing: Checkbox(
        activeColor: kPrimaryAppColor,
        onChanged: checkboxCallback as void Function(bool?)?,
        value: isChecked,
      ),
    );
  }
}



