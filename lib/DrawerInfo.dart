import 'package:first_app/Contact.dart';
import 'package:first_app/Feedback.dart';
import 'package:first_app/homePage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerInfo extends StatefulWidget {
  const DrawerInfo({Key? key}) : super(key: key);

  @override
  _DrawerInfoState createState() => _DrawerInfoState();
}

class _DrawerInfoState extends State<DrawerInfo> {
  openURL() async {
    if (await canLaunch('https://www.facebook.com/rohith.sangati/')) {
      await launch('https://www.facebook.com/rohith.sangati/',
          forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Could not launch ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(45, 179, 0, 1),
                Color.fromRGBO(0, 255, 0, 1),
                Color.fromRGBO(102, 255, 102, 1),
              ],
            ),
          ),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('asset/images/Farmer.png'),
                  ),
                ),
                margin: EdgeInsets.only(right: 180.0, top: 70.0),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0, right: 110.0, bottom: 10.0),
                child: Text(
                  'Agri Guide',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 51, 0, 1),
                      fontSize: 34.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
        InkWell(
          child: Ink(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            width: double.infinity,
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Icon(
                    Icons.home,
                    size: 30.0,
                  ),
                ),
                Text(
                  'Home',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          splashColor: Colors.grey,
          onTap: () {
            Navigator.of(context).pop(
              MaterialPageRoute(
                builder: (BuildContext context) => HomePage(),
              ),
            );
          },
        ),
        InkWell(
          child: Ink(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            width: double.infinity,
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Icon(
                    Icons.mail,
                    size: 28.0,
                  ),
                ),
                Text(
                  'Contact Us',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          splashColor: Colors.grey,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => Contact(),
              ),
            );
          },
        ),
        InkWell(
          child: Ink(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            width: double.infinity,
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Icon(
                    Icons.facebook,
                    size: 28.0,
                  ),
                ),
                Text(
                  'Facebook',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          splashColor: Colors.grey,
          onTap: () {
            print('Pressed');
            openURL();
          },
        ),
        InkWell(
          child: Ink(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            width: double.infinity,
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Icon(
                    Icons.star,
                    size: 28.0,
                  ),
                ),
                Text(
                  'Rate Us',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          splashColor: Colors.grey,
          onTap: () => print('Home'),
        ),
        InkWell(
          child: Ink(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            width: double.infinity,
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Icon(
                    Icons.feedback_rounded,
                    size: 28.0,
                  ),
                ),
                Text(
                  'Feedback',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          splashColor: Colors.grey,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Fedback()));
          },
        )
      ],
    );
  }
}
