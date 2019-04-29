// import 'package:timefollower/ui/home_page.dart';
// import 'package:timefollower/ui/new_taks_page.dart';
// import 'package:timefollower/ui/tasks_page.dart';
// import 'package:timefollower/ui/reports_page.dart';
// import 'package:timefollower/ui/settings_page.dart';

import 'package:flutter/material.dart';
import 'package:timefollower/ui/new_taks_page.dart';

// import 'dart:io';

class TasksPaga extends StatefulWidget {
  final Widget child;

  TasksPaga({Key key, this.child}) : super(key: key);

  _TasksPagaState createState() => _TasksPagaState();
}

class _TasksPagaState extends State<TasksPaga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            tooltip: 'Nova Atividade',
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewTaskPage()),
              );
            },
          ),
          IconButton(
            icon: CircleAvatar(
              backgroundImage: NetworkImage(""),
            ),
            onPressed: () {
              
            },
          ),
        ],
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Atividades',
          style: TextStyle(
            color: Colors.black,
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'SFDisplayPro',
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            Text('Atividades')
          ],
        ),
      ),
    );
  }
}
