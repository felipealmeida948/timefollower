// import 'package:timefollower/ui/home_page.dart';
// import 'package:timefollower/ui/new_taks_page.dart';
// import 'package:timefollower/ui/tasks_page.dart';
// import 'package:timefollower/ui/reports_page.dart';
// import 'package:timefollower/ui/settings_page.dart';

import 'package:flutter/material.dart';
import 'package:timefollower/presentation/line_awesome_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import 'dart:io';
final String bgNewTask = 'undraw_Specs.svg';
final Widget svg = SvgPicture.asset(bgNewTask, semanticsLabel: 'bgNewTs');

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
        image: DecorationImage(
          image: AssetImage("images/undraw_Specs_img.png"),
          fit: BoxFit.fitWidth,
          alignment: Alignment(0.0, 1.0),
        ),
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
            ),
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
          margin: EdgeInsets.symmetric(horizontal: 17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Text(
                  'Inisira uma nova atividade',
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  TextField(
                    controller: _taskNameController,
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 0.0,
                        ),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white54,
                          width: 0.0,
                        ),
                      ),
                      alignLabelWithHint: true,
                      labelText: 'Nome da atividade',
                      labelStyle: TextStyle(
                        color: Colors.white54,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  TextField(
                    controller: _taskNameController,
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 0.0,
                        ),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white54,
                          width: 0.0,
                        ),
                      ),
                      alignLabelWithHint: true,
                      labelText: 'Escolha um projeto',
                      labelStyle: TextStyle(
                        color: Colors.white54,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  TextField(
                    controller: _taskNameController,
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 0.0,
                        ),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white54,
                          width: 0.0,
                        ),
                      ),
                      alignLabelWithHint: true,
                      labelText: 'Inicio',
                      labelStyle: TextStyle(
                        color: Colors.white54,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  TextField(
                    controller: _taskNameController,
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 0.0,
                        ),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white54,
                          width: 0.0,
                        ),
                      ),
                      alignLabelWithHint: true,
                      labelText: 'Final',
                      labelStyle: TextStyle(
                        color: Colors.white54,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 40.0),
                    child: RaisedButton(
                      onPressed: () {},
                      textColor: Colors.black54,
                      padding: EdgeInsets.symmetric(
                        horizontal: 45.0,
                        vertical: 11.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Text(
                        'Adicionar tarefa',
                        style: TextStyle(
                          fontFamily: 'SFDisplayPro',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
