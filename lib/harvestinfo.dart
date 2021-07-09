import 'package:first_app/harvesting.dart';
import 'package:flutter/material.dart';

class Find extends StatelessWidget {
  final a, b, c;
  Find(this.a, this.b, this.c);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 250.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.fill, image: AssetImage(b))),
        ),
        automaticallyImplyLeading: false,
        brightness: Brightness.dark,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              '\n$a\n',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text(
              c,
              style: TextStyle(fontSize: 15.0),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          'Back',
        ),
        icon: Icon(Icons.navigate_before),
        backgroundColor: Color.fromRGBO(64, 64, 64, 1),
        onPressed: () {
          Navigator.of(context).pop(MaterialPageRoute(
              builder: (BuildContext context) => Harvesting(0)));
        },
      ),
    );
  }
}
