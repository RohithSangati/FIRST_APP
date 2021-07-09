import 'package:first_app/DrawerInfo.dart';
import 'package:flutter/material.dart';

import './navbar.dart';
import './info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        drawer: Drawer(
          child: DrawerInfo(),
        ),
        appBar: AppBar(
          title: Text(
            "AGRI GUIDE",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
          brightness: Brightness.dark,
          bottom: new PreferredSize(
            child: Container(
              color: Color.fromRGBO(242, 242, 242, 1),
              child: NavLinks(),
            ),
            preferredSize: new Size(80.0, 80.0),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Info(0),
            Info(1),
            Info(2),
            Info(3),
            Info(4),
            Info(5),
          ],
        ),
      ),
    );
  }
}
