import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Fedback extends StatefulWidget {
  const Fedback({Key? key}) : super(key: key);

  @override
  _FedbackState createState() => _FedbackState();
}

class _FedbackState extends State<Fedback> {
  final t1 = new TextEditingController();
  final t2 = new TextEditingController();
  final t3 = new TextEditingController();

  void dispose() {
    t1.dispose();
    t2.dispose();
    t3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(242, 242, 242, 1),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Feedback',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Please give your Feedback',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 128, 0, 1),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: t1,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(217, 217, 217, 1),
                    hintText: 'Your Name',
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: t2,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(217, 217, 217, 1),
                    hintText: 'Your Mail Id',
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: t3,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(217, 217, 217, 1),
                    hintText: 'Give Feedback',
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromRGBO(255, 128, 0, 1),
        label: Text('Submit'),
        onPressed: () {
          FocusScope.of(context).requestFocus(new FocusNode());
          if (t1.text == '' || t2.text == '' || t3.text == '') {
            Fluttertoast.showToast(
                msg: 'Fill all forms', gravity: ToastGravity.CENTER);
          } else {
            Fluttertoast.showToast(
                msg: 'Thankyou ${t1.text}', gravity: ToastGravity.CENTER);
          }
          t1.text = '';
          t2.text = '';
          t3.text = '';
          setState(() {});
        },
      ),
    );
  }
}
