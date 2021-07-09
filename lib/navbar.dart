import 'package:flutter/material.dart';

class NavLinks extends StatefulWidget {
  const NavLinks({Key? key}) : super(key: key);

  @override
  _NavLinksState createState() => _NavLinksState();
}

class _NavLinksState extends State<NavLinks> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      indicatorWeight: 4.0,
      indicatorColor: Color.fromRGBO(0, 0, 0, 0.5),
      tabs: <Widget>[
        Container(
          height: 70.0,
          child: Tab(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset('asset/icons/Paddy.png'),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 70.0,
          child: Tab(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset('asset/icons/Sugarcane.png'),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 70.0,
          child: Tab(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset('asset/icons/Wheat.png'),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 70.0,
          child: Tab(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset('asset/icons/Groundnut.png'),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 70.0,
          child: Tab(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset('asset/icons/Cotton.png'),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 70.0,
          child: Tab(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset('asset/icons/Maize.png'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
