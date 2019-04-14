// import 'package:timefollower/ui/home_page.dart'; 
// import 'package:timefollower/ui/new_taks_page.dart'; 
// import 'package:timefollower/ui/tasks_page.dart'; 
// import 'package:timefollower/ui/reports_page.dart'; 
// import 'package:timefollower/ui/settings_page.dart'; 

import 'package:flutter/material.dart';

// import 'dart:io';

class ReportsPage extends StatefulWidget {
  final Widget child;

  ReportsPage({Key key, this.child}) : super(key: key);

  _ReportsPageState createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("Relatórios")
    );
  }
}