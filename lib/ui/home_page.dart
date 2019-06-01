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

class FABBottomAppBarItem {
  FABBottomAppBarItem({this.iconData, this.text});
  IconData iconData;
  String text;
}

class FABBottomAppBar extends StatefulWidget {
  FABBottomAppBar({
    this.items,
    this.centerItemText,
    this.height: 60.0,
    this.iconSize: 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    this.onTabSelected,
  }) {
    assert(this.items.length == 2 || this.items.length == 4);
  }
  final List<FABBottomAppBarItem> items;
  final String centerItemText;
  final double height;
  final double iconSize;
  final Color backgroundColor;
  final Color color;
  final Color selectedColor;
  final NotchedShape notchedShape;
  final ValueChanged<int> onTabSelected;

  @override
  State<StatefulWidget> createState() => FABBottomAppBarState();
}

class FABBottomAppBarState extends State<FABBottomAppBar> {
  int _selectedIndex = 0;

  _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: _updateIndex,
      );
    });
    items.insert(items.length >> 1, _buildMiddleTabItem());

    return BottomAppBar(
      shape: widget.notchedShape,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
      color: widget.backgroundColor,
    );
  }

  Widget _buildMiddleTabItem() {
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: widget.iconSize),
            Text(
              widget.centerItemText ?? '',
              style: TextStyle(color: widget.color),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem({
    FABBottomAppBarItem item,
    int index,
    ValueChanged<int> onPressed,
  }) {
    Color color = _selectedIndex == index ? widget.selectedColor : widget.color;
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(item.iconData, color: color, size: widget.iconSize),
                Text(
                  item.text,
                  style: TextStyle(color: color, fontSize: 12.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
        maxHeight: 275.0,
        backdropOpacity: 0.7,
        backdropEnabled: true,
        borderRadius: radius,
        controller: _pc,
        minHeight: 0,
        panel: _panelNewTask(context),
        body: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment(
                    1.0, 0.3), // 10% of the width, so there are ten blinds.
                colors: [
                  const Color(0xFF651FFF),
                  const Color(0xFF7029BE),
                ], // whitish to gray
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x90651FFF),
                  blurRadius: 15.0,
                  offset: Offset(0, 5.0),
                )
              ],
            ),
            margin: EdgeInsets.only(top: 67.0),
            // transform: Matrix4.translationValues(0.0, 0.0, 0.0),
            height: 55.0,
            width: 55.0,
            child: RaisedButton( 
              color: Colors.transparent,
              elevation: 0,
              onPressed: () => _pc.open(),
              child: Container(
                transform: Matrix4.translationValues(-3.0, 0.0, 0.0),
                child: Icon(  
                  // LineAwesome.clock_o,
                  LineAwesome.plus,
                  color: Colors.white,
                  size: 32.0,
                ),
              ),
            ),
          ),
          body: Container(
            // color: Colors.transparent,
            child: callPage(_selectedIndex),
          ),
          bottomNavigationBar: Container(
            height:
                Theme.of(context).platform == TargetPlatform.iOS ? 100.0 : 70.0,
            child: FABBottomAppBar(
              height: 70.0,
              // centerItemText: 'Asada',
              color: Colors.grey,
              selectedColor: Color(0xFF651FFF),
              // notchedShape: CircularNotchedRectangle(),
              iconSize: 34.0,
              onTabSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              items: [
                FABBottomAppBarItem(
                    iconData: LineAwesome.dashboard, text: 'Dashboard'),
                FABBottomAppBarItem(
                    iconData: LineAwesome.clock_o, text: 'Atividades'),
                FABBottomAppBarItem(
                    iconData: LineAwesome.bar_chart, text: 'Relatórios'),
                FABBottomAppBarItem(
                    iconData: LineAwesome.gear, text: 'Ajustes'),
              ],
            ),
          ),

          // bottomNavigationBar: Container(
          //   height:
          //       Theme.of(context).platform == TargetPlatform.iOS ? null : 70.0,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     shape: BoxShape.rectangle,
          //     boxShadow: [
          //       BoxShadow(
          //         color: const Color(0x20000000),
          //         blurRadius: 15.0,
          //         offset: Offset(0, -5.0),
          //       ),
          //     ],
          //   ),
          //   child: BottomNavigationBar(
          //     type: BottomNavigationBarType.fixed,
          //     items: <BottomNavigationBarItem>[
          //       BottomNavigationBarItem(
          //         icon: Icon(LineAwesome.dashboard),
          //         title: Text(
          //           'Dashboard',
          //           style: TextStyle(
          //             fontSize: 12.0,
          //             fontFamily: 'SFDisplayPro',
          //           ),
          //         ),
          //       ),
          //       // BottomNavigationBarItem(
          //       //   icon: Icon(LineAwesome.plus),
          //       //   title: Text(
          //       //     'Novo',
          //       //     style: TextStyle(
          //       //       fontSize: 12.0,
          //       //       fontFamily: 'SFDisplayPro',
          //       //     ),
          //       //   ),
          //       // ),
          //       BottomNavigationBarItem(
          //         icon: Icon(LineAwesome.clock_o),
          //         title: Text(
          //           'Atividades',
          //           style: TextStyle(
          //             fontSize: 12.0,
          //             fontFamily: 'SFDisplayPro',
          //           ),
          //         ),
          //       ),
          //       BottomNavigationBarItem(
          //         icon: Icon(LineAwesome.bar_chart),
          //         title: Text(
          //           'Relatórios',
          //           style: TextStyle(
          //             fontSize: 12.0,
          //             fontFamily: 'SFDisplayPro',
          //           ),
          //         ),
          //       ),
          //       BottomNavigationBarItem(
          //         icon: Icon(LineAwesome.gear),
          //         title: Text(
          //           'Ajustes',
          //           style: TextStyle(
          //             fontSize: 12.0,
          //             fontFamily: 'SFDisplayPro',
          //           ),
          //         ),
          //       ),
          //     ],
          //     currentIndex: _selectedIndex,
          //     iconSize: 32.0,
          //     fixedColor: Color(0xFF651FFF),
          //     onTap: (int index) {
          //       setState(() {
          //         _selectedIndex = index;
          //       });
          //     },
          //   ),
          // ),
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
              fontSize: 26.0,
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
                fontSize: 14.0),
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
