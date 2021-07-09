import 'package:flutter/material.dart';
import './main.dart';

class FindCrop extends StatefulWidget {
  const FindCrop({Key? key}) : super(key: key);

  @override
  _FindCropState createState() => _FindCropState();
}

class _FindCropState extends State<FindCrop> {
  String dropdownvalue = 'Alluvial Soil';
  var items = [
    'Alluvial Soil',
    'Black Soil',
    'Red And Yellow Soil',
    'Laterite Soil',
    'Arid Soil',
    'Forest And Mountain Soil'
  ];
  Map<dynamic, dynamic> mp = {
    'Alluvial Soil': [
      'Tobacco',
      'Cotton',
      'Rice',
      'Wheat',
      'Bazra',
      'Sorgam',
      'Pea',
      'Pegion pea',
      'Black gram',
      'Green gram',
      'Soya bean',
      'Ground nut',
      'Mustard',
      'Linseed',
      'Sesame',
      'Barley',
      'Jute',
      'Maize',
      'Any Oil Seeds',
      'Vegetables and Fruits'
    ],
    'Black Soil': [
      'Rice',
      'Sugarcane',
      'Wheat',
      'Jowar',
      'Linseed',
      'Sunflower',
      'Cereals',
      'Citrus Fruits',
      'Vegetables',
      'Tobacco',
      'Groundnut',
      'Oil seeds and Millets'
    ],
    'Red And Yellow Soil': [
      'Rice',
      'Wheat',
      'Sugarcane',
      'Maize',
      'Groundnut',
      'Ragi',
      'Potato',
      'Oilseeds',
      'Pulses',
      'Millets',
      'Fruits'
    ],
    'Laterite Soil': [
      'Cotton',
      'Rice',
      'Wheat',
      'Pulses',
      'Tea',
      'Coffee',
      'Rubber',
      'Coconut',
      'Cashews'
    ],
    'Arid Soil': ['Wheat', 'Cotton', 'Corn', 'Millets', 'Pulses', 'Barley'],
    'Forest And Mountain Soil': [
      'Tea',
      'Spices',
      'Wheat',
      'Maize',
      'Barley',
      'Coffee',
      'Tropical and Temparature Fruits'
    ],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crop Finder',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                Color.fromRGBO(45, 179, 0, 1),
                Color.fromRGBO(0, 255, 0, 1),
                Color.fromRGBO(102, 255, 102, 1),
              ])),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop(
              MaterialPageRoute(builder: (BuildContext context) => MyApp()),
            );
          },
          child: Icon(
            Icons.navigate_before,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Hello! Your crop finder is here...',
                style: TextStyle(
                  color: Color.fromRGBO(255, 0, 102, 1),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "Choose your soil and find suitable crop",
            ),
            Container(
              child: DropdownButtonFormField(
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(255, 0, 102, 1),
                        width: 1.2,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(50.0),
                          right: Radius.circular(50.0))),
                ),
                value: dropdownvalue,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                      ));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownvalue = newValue.toString();
                  });
                },
              ),
              padding: EdgeInsets.only(
                  top: 150.0, bottom: 10.0, left: 50.0, right: 50.0),
            ),
            RaisedButton(
              color: Color.fromRGBO(166, 166, 166, 1),
              elevation: 8.0,
              onPressed: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 380.0,
                        child: Column(
                          children: [
                            Center(
                              child: Container(
                                width: 60.0,
                                height: 7.0,
                                margin: EdgeInsets.only(top: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(30.0),
                                    right: Radius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 30.0, bottom: 8.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Your Choice',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 35.0),
                              child: Text('You are chosen -$dropdownvalue '),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
                              child: Text(
                                'Suitable crops for $dropdownvalue',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListView(
                                children: [
                                  for (var i in mp[dropdownvalue])
                                    Center(
                                      child: Container(
                                        padding: EdgeInsets.all(3.0),
                                        child: Text(i.toString()),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text(
                'Find',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
