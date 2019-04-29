import 'package:flutter/services.dart';
import 'package:timefollower/presentation/line_awesome_icons.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

import 'package:timefollower/ui/dashboard_page.dart';
import 'package:timefollower/ui/tasks_page.dart';
import 'package:timefollower/ui/new_taks_page.dart';
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

  Widget callPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return DashboardPage();
      case 1:
        return TasksPaga();
      // case 2:
      //   return NewTaskPage();
      case 2:
        return ReportsPage();
      case 3:
        return SettingsPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    return Scaffold(

      // backgroundColor: Colors.transparent,
      body: Container(
        // color: Colors.transparent,
        child: callPage(_selectedIndex),
      ),
      bottomNavigationBar: Container(
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
    );
  }
}
