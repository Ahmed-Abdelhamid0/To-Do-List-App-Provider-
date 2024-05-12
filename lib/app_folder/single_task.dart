import 'package:flutter/material.dart';
import 'package:todo_app/model/task_data.dart';


class SingleTask extends StatelessWidget {
   final Task task;
   final Function updateTask;
  SingleTask({super.key,required this.task,required this.updateTask});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(13),
      child: Column(
        children: [
          ListTile(
            title: Text(
              task.content!,
              style: TextStyle(
                fontSize: 17,
                decoration: task.isDone!
                    ? TextDecoration.lineThrough
                    : null,
              ),
            ),
            subtitle: Text(
              task.taskStatus!,
            ),
            trailing: Checkbox(
              checkColor: Colors.black,
              fillColor: MaterialStatePropertyAll(
                Colors.transparent,
              ),
              shape: CircleBorder(),
              value: task.isDone!,
              onChanged: (val) {
                updateTask(task);
              },
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}


