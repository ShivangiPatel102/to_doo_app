import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/model/task_data.dart';
import 'package:to_do_list_app/screens/tasks_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
