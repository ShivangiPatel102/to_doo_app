import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/model/task_data.dart';
import 'package:to_do_list_app/model/tasks.dart';

class ChangeTaskScreen extends StatelessWidget {
  ChangeTaskScreen({required this.task});
  Task task;
  String newTaskTitle = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Text Add task
            Text(
              'Update Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  color: kPrimaryAppColor,
                  fontWeight: FontWeight.bold),
            ),
            //Text field
            TextField(
              autofocus: false,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(height: 10.0,),
            //Add button
            TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context,listen: false).changeTaskName(task, newTaskTitle);
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(backgroundColor: kPrimaryAppColor ),
                child: Text(
                  'Update',
                  style: TextStyle(color: Colors.white),
                ),),
          ],
        ),
      ),
    );
  }
}
