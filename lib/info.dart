import 'package:first_app/Organic.dart';
import 'package:first_app/cropfinder.dart';
import 'package:flutter/material.dart';

import './weather.dart';
import './buttons.dart';
import './cropfinder.dart';

class Info extends StatefulWidget {
  final index;
  Info(this.index);
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  var l = ['Paddy', 'Sugarcane', 'Wheat', 'Groundnut', 'Cotton', 'Maize'];
  @override
  Widget build(BuildContext context) {
    int index = widget.index;
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 15.0, top: 5.0, right: 10.0),
          child: Text(
            'Weather',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          ),
        ),
        WeatherInfo(),
        Container(
          margin: EdgeInsets.only(left: 15.0, top: 4.5, right: 10.0),
          child: Text(
            'Crop Finder',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          ),
        ),
        CropFinder(),
        Container(
          margin: EdgeInsets.only(left: 15.0, right: 10.0, top: 3.0),
          child: Text(
            '${l[index]}',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          ),
        ),
        Buttons(index),
        Container(
          margin: EdgeInsets.only(left: 15.0, top: 5.0, right: 10.0),
          child: Text(
            'Organic Farming Tips',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          ),
        ),
        Organic(),
      ],
    );
  }
}
