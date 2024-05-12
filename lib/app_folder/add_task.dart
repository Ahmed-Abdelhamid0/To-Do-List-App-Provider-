import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/model/task_data.dart';

class AddTask extends StatelessWidget {
  AddTask({super.key});
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formState = GlobalKey();
    String txt = '';
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 10,
          right: 10,
        ),
        child: Column(
          children: [
            SizedBox(height: 30),
            Form(
              key: formState,
              child: TextFormField(
                autofocus: true,
                maxLength: 20,
                keyboardType: TextInputType.text,
                textAlign: TextAlign.center,
                onChanged: (val) {
                  txt = val;
                },
                validator: (val) {
                  if (txt.isEmpty) {
                    return 'task content can\'t be empty!';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                )),
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                if(formState.currentState!.validate()) {
                     Provider.of<TaskData>
                     (context,listen: false).addTask(txt);
                     Navigator.pop(context);
                }
              },
              child: Text(
                'Add',
                style: TextStyle(fontSize: 18.5),
              ),
              color: Colors.black,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
