import 'package:flutter/services.dart';
import 'package:timefollower/presentation/line_awesome_icons.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:timefollower/ui/dashboard_page.dart';
import 'package:timefollower/ui/tasks_page.dart';
// import 'package:timefollower/ui/new_taks_page.dart';
import 'package:timefollower/ui/reports_page.dart';
import 'package:timefollower/ui/settings_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// import 'dart:io';

class HomePage extends StatefulWidget {
  final Widget child;
  HomePage({Key key, this.child}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  PanelController _pc = new PanelController();

  Widget callPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return DashboardPage();
      case 1:
        return TasksPaga();
      case 2:
        return ReportsPage();
      case 3:
        return SettingsPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(20.0),
      topRight: Radius.circular(20.0),
    );

    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: 270.0,
        backdropOpacity: 0.7,
        backdropEnabled: true,
        borderRadius: radius,
        controller: _pc,
        minHeight: 0,
        panel: _panelNewTask(context),
        body: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () => _pc.open(),
            child: Icon(
              LineAwesome.clock_o,
              size: 30.0,
            ),
          ),
          body: Container(
            // color: Colors.transparent,
            child: callPage(_selectedIndex),
          ),
          bottomNavigationBar: Container(
            height:
                Theme.of(context).platform == TargetPlatform.iOS ? null : 70.0,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: const Color(0x20000000),
                  blurRadius: 15.0,
                  offset: Offset(0, -5.0),
                ),
              ],
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(LineAwesome.dashboard),
                  title: Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'SFDisplayPro',
                    ),
                  ),
                ),
                // BottomNavigationBarItem(
                //   icon: Icon(LineAwesome.plus),
                //   title: Text(
                //     'Novo',
                //     style: TextStyle(
                //       fontSize: 12.0,
                //       fontFamily: 'SFDisplayPro',
                //     ),
                //   ),
                // ),
                BottomNavigationBarItem(
                  icon: Icon(LineAwesome.clock_o),
                  title: Text(
                    'Atividades',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'SFDisplayPro',
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(LineAwesome.bar_chart),
                  title: Text(
                    'Relatórios',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'SFDisplayPro',
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(LineAwesome.gear),
                  title: Text(
                    'Ajustes',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'SFDisplayPro',
                    ),
                  ),
                ),
              ],
              currentIndex: _selectedIndex,
              iconSize: 32.0,
              fixedColor: Color(0xFF651FFF),
              onTap: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

Widget _panelNewTask(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(30.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Text(
            "Iniciar Tempo",
            style: TextStyle(
              fontFamily: 'SFDisplayPro',
              fontSize: 22.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 2.0),
          child: Text(
            "Informe a atividade, mas não se preocupe você pode inserir um nome mais tarde.",
            style: TextStyle(
              fontFamily: 'SFDisplayPro',
              color: Colors.black87,
            ),
          ),
        ),
        Container(
          transform: Matrix4.translationValues(0.0, -5.0, 0.0),
          margin: EdgeInsets.only(bottom: 25.0),
          child: TextField(
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black38,
                    width: 0.0,
                  ),
                ),
                alignLabelWithHint: true,
                labelText: "Nome da atividade",
                labelStyle: TextStyle(fontWeight: FontWeight.normal)),
            style: TextStyle(
                fontFamily: 'SFDisplayPro',
                fontSize: 22.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment(
                  1.0, 0.3), // 10% of the width, so there are ten blinds.
              colors: [
                const Color(0xFF651FFF),
                const Color(0xFF7029BE),
              ], // whitish to gray
            ),
          ),
          child: RaisedButton(
            onPressed: () {},
            textColor: Colors.white,
            color: Colors.transparent,
            elevation: 0,
            padding: EdgeInsets.symmetric(
              vertical: 14.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Iniciar Tempo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SFDisplayPro',
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
