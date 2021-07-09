import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FertilizerCalci extends StatefulWidget {
  const FertilizerCalci({Key? key}) : super(key: key);

  @override
  _FertilizerCalciState createState() => _FertilizerCalciState();
}

class _FertilizerCalciState extends State<FertilizerCalci> {
  var _textcontroller;
  num result = 0;
  var isvisible = false;

  void initState() {
    super.initState();
    _textcontroller = new TextEditingController();
  }

  void dispose() {
    _textcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(242, 242, 242, 1),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Fertilizer Calculator',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10.0, left: 5.0),
              child: Text(
                'Enter The Size Of Land In Acres',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.deepOrange[900],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 60.0, right: 60.0, top: 30.0),
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 25.0, color: Colors.white),
                textAlign: TextAlign.center,
                controller: _textcontroller,
                autocorrect: true,
                decoration: InputDecoration(
                    suffixIcon: Container(
                      margin: EdgeInsets.only(top: 43.0, right: 15.0),
                      child: Text(
                        'Acres',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                    contentPadding: EdgeInsets.only(top: 40.0, bottom: 40.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20.0),
                        right: Radius.circular(20.0),
                      ),
                      borderSide: BorderSide(color: Colors.white, width: 5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20.0),
                        right: Radius.circular(20.0),
                      ),
                      borderSide: BorderSide(color: Colors.white, width: 5.0),
                    ),
                    fillColor: Color.fromRGBO(153, 153, 153, 1),
                    filled: true,
                    hintText: 'Enter Here',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 20.0)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              width: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 7.0),
                    child: RaisedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(new FocusNode());
                        setState(() {
                          isvisible = false;
                          _textcontroller.text = '';
                        });
                      },
                      child: Text(
                        'Reset',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                      elevation: 5.0,
                      color: Colors.lightBlue,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.0),
                    child: RaisedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(new FocusNode());
                        try {
                          result = num.parse(_textcontroller.text);
                          isvisible = true;
                        } catch (e) {
                          Fluttertoast.showToast(
                            msg: 'Enter Valid Input',
                            gravity: ToastGravity.CENTER,
                          );
                          isvisible = false;
                        }
                        setState(() {
                          _textcontroller.text = '';
                        });
                      },
                      child: Text(
                        'Calculate',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                      elevation: 5.0,
                      color: Colors.lightGreen,
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: isvisible,
              child: Card(
                elevation: 5.0,
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'MOP/SSP/UREA',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'MOP',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '${result * 20}Kgs',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 40.0),
                            child: Column(
                              children: [
                                Text(
                                  'SSP',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '${result * 61}Kgs',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'UREA',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '${result * 61}Kgs',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(bottom: 20.0),
                    ),
                  ],
                ),
                margin: EdgeInsets.only(
                    top: 30.0, left: 12.0, right: 12.0, bottom: 7.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30.0),
                    right: Radius.circular(30.0),
                  ),
                ),
                color: Color.fromRGBO(230, 230, 230, 1),
              ),
            ),
            Visibility(
              visible: isvisible,
              child: Card(
                elevation: 5.0,
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'DAP/MOP/UREA',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'DAP',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '${result * 20}Kgs',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 40.0),
                            child: Column(
                              children: [
                                Text(
                                  'MOP',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '${result * 20}Kgs',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'UREA',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '${result * 59}Kgs',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(bottom: 20.0),
                    ),
                  ],
                ),
                margin: EdgeInsets.all(12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30.0),
                    right: Radius.circular(30.0),
                  ),
                ),
                color: Color.fromRGBO(230, 230, 230, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
