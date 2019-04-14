import 'package:timefollower/ui/home_page.dart'; 
// import 'package:timefollower/ui/new_taks_page.dart'; 
// import 'package:timefollower/ui/tasks_page.dart'; 
// import 'package:timefollower/ui/reports_page.dart'; 
// import 'package:timefollower/ui/settings_page.dart'; 

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    title: 'TimeFollower',
    theme: ThemeData(
      primaryColor: Color(0xFF651FFF),
      accentColor: Color(0xFF651FFF),
      // fontFamily: '',
    ),
    debugShowCheckedModeBanner: false,
  ));
}
