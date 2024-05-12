import 'package:flutter/material.dart';
import 'package:todo_app/app_folder/todo_screen.dart';



class TodoSplash extends StatefulWidget {
  const TodoSplash({super.key});

  @override
  State<TodoSplash> createState() => _TodoSplashState();
}

class _TodoSplashState extends State<TodoSplash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 7),(){
      Navigator.of(context)
      .pushReplacement(MaterialPageRoute
      (
        builder: (context)=>TodoScreen()
      )
      );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBEDEF ),
      body: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(''' \t \t \t To-Do \n  \t List App''',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontFamily: 'SofiaSansExtraCondensed-VariableFont_wght'
              ),
            ),
            SizedBox(width:15),
          ],
        ),
      ),
    );
  }
}
