import 'package:flutter/material.dart';

AppBar appBar(){
  return AppBar(
    elevation: 0,
    automaticallyImplyLeading: false,
    backgroundColor: Color(0xffEBEDEF ),
    title: Text('My to-dos'),
    titleTextStyle: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
        color: Colors.black,
    ),
  );
}