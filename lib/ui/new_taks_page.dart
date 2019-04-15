// import 'package:timefollower/ui/home_page.dart';
// import 'package:timefollower/ui/new_taks_page.dart';
// import 'package:timefollower/ui/tasks_page.dart';
// import 'package:timefollower/ui/reports_page.dart';
// import 'package:timefollower/ui/settings_page.dart';

import 'package:flutter/material.dart';

// import 'dart:io';

class NewTaskPage extends StatefulWidget {
  final Widget child;

  NewTaskPage({Key key, this.child}) : super(key: key);

  _NewTaskPageState createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {
  final _taskNameController = TextEditingController();
  final _projectNameController = TextEditingController();
  final _startTimeController = TextEditingController();
  final _endTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
            icon: CircleAvatar(
              backgroundImage: NetworkImage(""),
            ),
            onPressed: () {},
          ),
        ],
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Nova atividade',
          style: TextStyle(
            color: Colors.black,
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Inisira uma nova atividade',
              style: TextStyle(
                fontSize: 19.0,
                letterSpacing: -0.2,
              ),
            ),
            TextField(
              controller: _taskNameController,
              style: TextStyle(
                color: Color(0xFF651FFF),
                fontSize: 35.0,
                letterSpacing: -0.2,
                fontWeight: FontWeight.w700,
              ),
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.black26, width: 0.0),
                ),
                alignLabelWithHint: true,
                labelText: 'Nome',
                labelStyle: TextStyle(
                  color: Colors.black26,
                  fontSize: 30.0,
                  letterSpacing: -0.2,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
