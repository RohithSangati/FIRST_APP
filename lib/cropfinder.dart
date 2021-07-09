import 'package:flutter/material.dart';
import './findcrop.dart';

class CropFinder extends StatelessWidget {
  const CropFinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(20.0),
            right: Radius.circular(20.0),
          ),
        ),
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        color: Color.fromRGBO(230, 230, 230, 1),
        shadowColor: Color.fromRGBO(230, 230, 230, 1),
        elevation: 5.0,
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => FindCrop()),
            );
          },
          title: Text('Find your crop'),
          subtitle: Text('Find suitable crop for your soil'),
          trailing: Icon(Icons.navigate_next),
        ),
      ),
    );
  }
}
