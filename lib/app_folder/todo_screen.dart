import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/app_folder/add_task.dart';
import 'package:todo_app/app_folder/single_task.dart';
import 'package:todo_app/app_widgets/app_appbar.dart';
import 'package:todo_app/app_widgets/app_fab.dart';
import 'package:todo_app/model/task_data.dart';

class TodoScreen extends StatelessWidget {
  TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      floatingActionButton: fAB(onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return AddTask();
          },
        );
      }),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: Provider.of<TaskData>(context).tasks.length,
        itemBuilder: (context, index) {
          return SingleTask(
              task: Provider.of<TaskData>(context).tasks[index],
            updateTask: (task){
              Provider.of<TaskData>(context,listen: false).updateTask(task);
            },
          );
        },
      ),
    );
  }
}
