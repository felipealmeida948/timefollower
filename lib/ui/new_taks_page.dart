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
    return Container(
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
                alignLabelWithHint: true,
                labelText: 'Nome da Atividade',
                labelStyle: TextStyle(
                  color: Colors.black26,
                  fontSize: 30.0,
                  letterSpacing: -0.2,
                  fontWeight: FontWeight.w700,
                )
                //  border: InputBorder.none,
                ),
          )
        ],
      ),
    );
  }
}
