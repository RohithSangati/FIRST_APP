import 'package:flutter/material.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> l = [
      'January',
      'Febrauary',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'Noverber',
      'December'
    ];
    var time = DateTime.now();
    var position;
    var img;
    if (time.hour >= 0 && time.hour < 12) {
      img = 'asset/images/Sunshine.png';
      position = 'Morning';
    } else if (time.hour >= 12 && time.hour < 15) {
      img = 'asset/images/Sun.png';
      position = 'Afternoon';
    } else if (time.hour >= 15 && time.hour < 18) {
      img = 'asset/images/Sunset.png';
      position = 'Evening';
    } else {
      img = 'asset/images/Moon.png';
      position = 'Night';
    }
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(20.0),
          right: Radius.circular(20.0),
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      color: Color.fromRGBO(230, 230, 230, 1),
      shadowColor: Color.fromRGBO(230, 230, 230, 1),
      elevation: 5.0,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      'Today, ${time.day} '
                      '${l[time.month - 1]}',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      '32' + '\u2103',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      position,
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 40.0, right: 30.0),
              child: Image.asset(img),
            ),
          )
        ],
      ),
    );
  }
}
