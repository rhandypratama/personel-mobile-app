import 'package:flutter/material.dart';
import 'package:personel/attendance/attendance-screen.dart';
import 'package:personel/dashboard/dashboard-screen.dart';
import 'package:personel/setting/setting-screen.dart';
import 'package:personel/utils/widget-model.dart';

class Personel extends StatefulWidget {
  @override
  _PersonelState createState() => _PersonelState();
}

class _PersonelState extends State<Personel> {
  final _tabPage = <Widget>[
    AttendanceScreen(),
    DashboardScreen(),
    SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              bottom: TabBar(
                indicatorWeight: 0,
                indicatorSize: TabBarIndicatorSize.label,
                // unselectedLabelColor: Colors.redAccent,
                indicator: BoxDecoration(
                  // gradient: LinearGradient(
                  //   colors: [Colors.redAccent, Colors.orangeAccent]
                  // ),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.redAccent.withOpacity(0.7)
                ),
                tabs: [
                  Tab(
                    child: Container(
                      width: 260,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 4),
                            child: Icon(Icons.timer, size: 14,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: dynamicText("Attendance", fontSize: 13, fontWeight: FontWeight.bold)
                          )
                        ]
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 240,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 4),
                            child: Icon(Icons.dashboard, size: 14,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: dynamicText("Dashboard", fontSize: 14, fontWeight: FontWeight.bold)
                          )
                        ]
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 240,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 4),
                            child: Icon(Icons.settings, size: 14,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: dynamicText("Setting", fontSize: 14, fontWeight: FontWeight.bold)
                          )
                        ]
                      ),
                    ),
                  ),
                  
                ]
              ),
            ),
          ),
          
          body: TabBarView(children: _tabPage)
          // body: AttendanceScreen()
          // body: DashboardScreen()
          // body: SettingScreen()

        ),
      ),
    );
  }
}