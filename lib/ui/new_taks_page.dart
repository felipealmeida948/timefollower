// import 'package:timefollower/ui/home_page.dart';
// import 'package:timefollower/ui/new_taks_page.dart';
// import 'package:timefollower/ui/tasks_page.dart';
// import 'package:timefollower/ui/reports_page.dart';
// import 'package:timefollower/ui/settings_page.dart';

import 'package:flutter/material.dart';
import 'package:timefollower/presentation/line_awesome_icons.dart';

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
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment(
              -2.5, -0.7), // 10% of the width, so there are ten blinds.
          colors: [
            const Color(0xFF7029BE),
            const Color(0xFF651FFF),
          ], // whitish to gray
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          brightness: Brightness.dark,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                LineAwesome.close,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
            // IconButton(
            //   icon: CircleAvatar(
            //     backgroundImage: NetworkImage(""),
            //   ),
            //   onPressed: () {},
            // ),
          ],
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Nova atividade',
            style: TextStyle(
              color: Colors.white,
              fontSize: 34.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'SFDisplayPro',
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
                  color: Colors.white
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
                        const BorderSide(color: Colors.white30, width: 0.0),
                  ),
                  alignLabelWithHint: true,
                  labelText: 'Nome',
                  labelStyle: TextStyle(
                    color: Colors.white30,
                    fontSize: 30.0,
                    letterSpacing: -0.2,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
