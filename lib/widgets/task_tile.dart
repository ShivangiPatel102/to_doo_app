import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final VoidCallback longPressCallback;
  final VoidCallback doublePressCallback;
  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback, required this.longPressCallback,required this.doublePressCallback});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: longPressCallback,
      onDoubleTap: doublePressCallback,
      child: ListTile(

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
      ),
    );
  }
}



