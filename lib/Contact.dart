import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromRGBO(242, 242, 242, 1),
        title: Text(
          'Contact Us',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10.0, top: 20.0),
              child: Text(
                'Contact Details',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 160.0,
                  width: 250.0,
                  margin: EdgeInsets.only(
                    top: 10.0,
                    left: 10.0,
                    right: 10.0,
                    bottom: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(50.0),
                      right: Radius.circular(
                        50.0,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 35.0,
                        color: Color.fromRGBO(255, 153, 194, 1),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 10.0,
                        ),
                        child: Text(
                          'Address',
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                      Text(
                        'Musalipedu(V),Yerpedu(M),Chittor(D),Andhra Pradesh,517619',
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 160.0,
                  width: 250.0,
                  margin: EdgeInsets.only(
                    top: 10.0,
                    left: 10.0,
                    right: 10.0,
                    bottom: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(50.0),
                      right: Radius.circular(
                        50.0,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 35.0,
                        color: Color.fromRGBO(255, 153, 194, 1),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 10.0,
                        ),
                        child: Text(
                          'Phone',
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                      Text(
                        '9701755690',
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 160.0,
                  width: 250.0,
                  margin: EdgeInsets.only(
                    top: 10.0,
                    left: 10.0,
                    right: 10.0,
                    bottom: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(50.0),
                      right: Radius.circular(
                        50.0,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.mail,
                        size: 35.0,
                        color: Color.fromRGBO(255, 153, 194, 1),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 10.0,
                        ),
                        child: Text(
                          'Email',
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                      Text(
                        'sangatirohith@gmail.com',
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
