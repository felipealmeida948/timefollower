import 'package:timefollower/presentation/line_awesome_icons.dart';

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

  @override
  Widget build(BuildContext context) {
    
    var _widgetOptions = [
      DashboardPage(),
      TasksPaga(),
      NewTaskPage(),
      ReportsPage(),
      SettingsPage(),
    ];

    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            tooltip: 'Nova Atividade',
            color: Colors.black,
            onPressed: () {
              setState(() {
                
              });
            },
          ),
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
          'TimeFollower',
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
        child: _widgetOptions.elementAt(_selectedIndex),
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
            )
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(LineAwesome.dashboard),
              title: Text(
                'Dashboard',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(LineAwesome.clock_o),
              title: Text(
                'Atividades',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(LineAwesome.plus),
              title: Text(
                'Novo',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(LineAwesome.bar_chart),
              title: Text(
                'Relatórios',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(LineAwesome.gear),
              title: Text(
                'Ajustes',
                style: TextStyle(fontSize: 12.0),
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