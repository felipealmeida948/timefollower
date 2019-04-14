// import 'package:timefollower/ui/home_page.dart'; 
// import 'package:timefollower/ui/new_taks_page.dart'; 
// import 'package:timefollower/ui/tasks_page.dart'; 
// import 'package:timefollower/ui/reports_page.dart'; 
// import 'package:timefollower/ui/settings_page.dart'; 

import 'package:flutter/material.dart';

// import 'dart:io';

class TasksPaga extends StatefulWidget {
  final Widget child;

  TasksPaga({Key key, this.child}) : super(key: key);

  _TasksPagaState createState() => _TasksPagaState();
}

class _TasksPagaState extends State<TasksPaga> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("Pagina de Tarefas"),
    );
  }
}