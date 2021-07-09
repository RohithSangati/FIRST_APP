import 'package:first_app/Fertilizer.dart';
import 'package:first_app/harvesting.dart';

import './PestsAndInsects.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final index;
  Buttons(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Material(
              child: InkWell(
                splashColor: Color.fromRGBO(89, 89, 89, 1),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20.0),
                  right: Radius.circular(20.0),
                ),
                onTap: () {
                  print(index);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Pests(index)));
                },
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  width: 100.0,
                  height: 70.0,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 1.0),
                        height: 35.0,
                        child: Image.asset('asset/images/Pest.png'),
                      ),
                      Text(
                        'Pests And Insects',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              color: Color.fromRGBO(0, 0, 0, 0.5),
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20.0),
                right: Radius.circular(20.0),
              ),
            ),
            padding: EdgeInsets.all(5.0),
          ),
          Container(
            child: Material(
              child: InkWell(
                splashColor: Color.fromRGBO(89, 89, 89, 1),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20.0),
                  right: Radius.circular(20.0),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => FertilizerCalci()));
                },
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  width: 100.0,
                  height: 70.0,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 1.0, bottom: 6.0),
                        height: 35.0,
                        child: Image.asset('asset/images/Fertilizer.png'),
                      ),
                      Text(
                        'Fertilizers',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              color: Color.fromRGBO(0, 0, 0, 0.5),
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20.0),
                right: Radius.circular(20.0),
              ),
            ),
            padding: EdgeInsets.all(5.0),
          ),
          Container(
            child: Material(
              child: InkWell(
                splashColor: Color.fromRGBO(89, 89, 89, 1),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20.0),
                  right: Radius.circular(20.0),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Harvesting(index)));
                },
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  width: 100.0,
                  height: 70.0,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 1.0),
                        height: 30.0,
                        child: Image.asset('asset/images/Harvest.png'),
                      ),
                      Text(
                        'Harvesting Methods',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              color: Color.fromRGBO(0, 0, 0, 0.5),
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20.0),
                right: Radius.circular(20.0),
              ),
            ),
            padding: EdgeInsets.all(5.0),
          ),
        ],
      ),
    );
  }
}
