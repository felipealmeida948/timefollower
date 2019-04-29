import 'package:flutter/material.dart';
import 'package:timefollower/presentation/line_awesome_icons.dart';
import 'package:timefollower/ui/new_taks_page.dart';

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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x90651FFF),
                        blurRadius: 15.0,
                        offset: Offset(0, 5.0),
                      )
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment(0.8,
                          0.0), // 10% of the width, so there are ten blinds.
                      colors: [
                        const Color(0xFF7029BE),
                        const Color(0xFF651FFF)
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
        padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 22.0),
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
                        "Veja as ultimas atividades lançadas",
                        style: TextStyle(
                          fontFamily: 'SFDisplayPro',
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(LineAwesome.expand),
                        tooltip: "Ver todas as atividades",
                        onPressed: () {},
                        color: Colors.black,
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0),
                    child: Column(
                      children: <Widget>[_cardLastTasksItem(context)],
                    ),
                  )
                ],
              )
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
        margin: EdgeInsets.symmetric(vertical: 2.0),
        child: Card(
          child: Row(
              // children: <Widget>[
              //   Text('Data'),
              // ],
              ),
        ),
      ),
    );
  }
}
