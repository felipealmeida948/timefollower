// import 'package:timefollower/ui/home_page.dart'; 
// import 'package:timefollower/ui/new_taks_page.dart'; 
// import 'package:timefollower/ui/tasks_page.dart'; 
// import 'package:timefollower/ui/reports_page.dart'; 
// import 'package:timefollower/ui/settings_page.dart'; 

import 'package:flutter/material.dart';

// import 'dart:io';

class SettingsPage extends StatefulWidget {
  final Widget child;

  SettingsPage({Key key, this.child}) : super(key: key);

  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("Ajustes"),
    );
  }
}