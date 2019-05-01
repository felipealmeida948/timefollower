import 'package:flutter/material.dart';
import 'package:timefollower/presentation/line_awesome_icons.dart';
import 'package:timefollower/ui/new_taks_page.dart';
import 'package:timefollower/ui/tasks_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              LineAwesome.plus,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewTaskPage()),
              );
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
            fontFamily: 'SFDisplayPro',
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            _summaryCard(context),
            _cardLastTasks(context),
          ],
        ),
      ),
    );
  }

  Widget _summaryCard(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/undraw_dashboard_time.png"),
                      fit: BoxFit.fitHeight,
                      alignment: Alignment(1.0, 0.0),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x90651FFF),
                        blurRadius: 15.0,
                        offset: Offset(0, 5.0),
                      )
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment(1.0,
                          0.3), // 10% of the width, so there are ten blinds.
                      colors: [
                        const Color(0xFF651FFF),
                        const Color(0xFF7029BE),
                      ], // whitish to gray
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                  child: Column(
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(
                          LineAwesome.clock_o,
                          size: 50.0,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Total da semana",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'SFDisplayPro',
                          ),
                        ),
                        subtitle: Text(
                          "56 Horas",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          LineAwesome.calendar_1,
                          size: 50.0,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Total do mês",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'SFDisplayPro',
                          ),
                        ),
                        subtitle: Text(
                          "144 Horas",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontFamily: 'SFDisplayPro',
                          ),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          LineAwesome.money,
                          size: 50.0,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Ganho total",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'SFDisplayPro',
                          ),
                        ),
                        subtitle: Text(
                          "6.450.00",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontFamily: 'SFDisplayPro',
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardLastTasks(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(22.0, 22.0, 22.0, 0.0),
        // padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 22.0),
        margin: EdgeInsets.symmetric(vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: const Color(0x20000000),
              blurRadius: 15.0,
              offset: Offset(0, 5.0),
            )
          ],
        ),
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Minhas atividades",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'SFDisplayPro',
                        ),
                      ),
                      Text(
                        "Ultimas atividades lançadas",
                        style: TextStyle(
                          fontFamily: 'SFDisplayPro',
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      RaisedButton(
                        disabledTextColor: Color(0xFF651FFF),
                        highlightElevation: 0,
                        color: Colors.black12,
                        textColor: Colors.black,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Container(
                          child: Text(
                            "Ver todas",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                        onPressed: () {
                          // TasksPaga();
                        },
                      ),
                    ],
                  )
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                  // margin: EdgeInsets.symmetric(vertical: 15.0),
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      _cardLastTasksItem(context),
                      _cardLastTasksItem(context),
                      _cardLastTasksItem(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardLastTasksItem(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 18.0),
        margin: EdgeInsets.symmetric(vertical: 4.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15.0,
              offset: Offset(0, 3.0),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 1.0),
                  child: Text(
                    "Trocar Banners",
                    style: TextStyle(
                      fontFamily: 'SFDisplayPro',
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          LineAwesome.clock_o,
                          size: 13.0,
                          color: Color(0xFF651FFF),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 2.0),
                          child: Text(
                            "09:00 - 12:00",
                            style: TextStyle(
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            LineAwesome.building,
                            size: 13.0,
                            color: Colors.amber,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 2.0),
                            child: Text(
                              "RaiaDrogasil",
                              style: TextStyle(
                                fontSize: 13.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              padding: EdgeInsets.all(0.0),
              alignment: Alignment(1.0, 0.0),
              icon: Icon(
                LineAwesome.close,
                color: Color(0xFFEC9AA4),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
