import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/model/task_data.dart';
import 'package:to_do_list_app/screens/change_task_screen.dart';
import 'package:to_do_list_app/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  // TasksList(this.tasks);
  // final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final currentTask = taskData.tasks[index];
            return TaskTile(
              isChecked: currentTask.isDone,
              taskTitle: currentTask.name,
              checkboxCallback: (bool? checkboxState) {
                if (checkboxState != null) {
                  taskData.updateTask(currentTask);
                }
              },
              longPressCallback: () {
                taskData.deleteTask(currentTask);
              },
              doublePressCallback: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: ChangeTaskScreen(task: currentTask,),
                    ),
                  ),
                  // isScrollControlled: true,
                );
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
