import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/app_folder/splash_screen.dart';
import 'package:todo_app/model/task_data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TodoSplash(),
      ),
    );
  }
}


