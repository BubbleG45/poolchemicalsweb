import 'package:flutter/material.dart';

AppBar saveAppBar = AppBar(
  centerTitle: true,
  title: Text('Chemical Log'),
  backgroundColor: Colors.indigo,
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 18.0),
      child: IconButton(
          icon: Icon(Icons.save),
          iconSize: 36,
          onPressed: () {
            //TODO create save method
            //TODO clear reading values after confirmed save
          }),
    )
  ],
);

AppBar customAppBar = AppBar(
  centerTitle: true,
  title: Text('Chemical Log'),
  backgroundColor: Colors.indigo,
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 18.0),
//      child: IconButton(icon: Icon(Icons.save), iconSize: 36, onPressed: () {}),
    )
  ],
);
