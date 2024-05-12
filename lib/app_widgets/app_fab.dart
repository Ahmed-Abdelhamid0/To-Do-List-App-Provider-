import 'package:flutter/material.dart';

FloatingActionButton fAB({required Function() onPressed}){
  return FloatingActionButton(
    backgroundColor:  Color(0xffEBEDEF),
      onPressed: onPressed,
    child: Icon(
      Icons.add,
      color: Colors.black,
      size: 23,
    ),
  );
}