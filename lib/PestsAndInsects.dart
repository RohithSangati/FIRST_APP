import 'package:first_app/PestsInfo.dart';
import 'package:flutter/material.dart';

class Pests extends StatefulWidget {
  final i;
  Pests(this.i);

  @override
  _PestsState createState() => _PestsState();
}

class _PestsState extends State<Pests> {
  var l1 = [
    [
      'Rice Case Worm',
      'Stackburn of Rice',
      'Aphids',
      'Whitebacked Planthopper',
      'Slugs and Snails'
    ],
    ['Red Rot', 'Wilt Disease', 'Bacterial Leaf Blight', 'Grassy Shoot'],
    [
      'Yellow Stripe Rust',
      'Powdery Mildew Of Cereals',
      'Root and Foot Rot',
      'Aphids'
    ],
    ['Black Mould', 'Aphids', 'White Grub', 'Termites', 'Wireworms'],
    [
      'Root Rot Of Cotton',
      'Bacterial Blight',
      'Aphids',
      'Cotton Leafhopper Jassids'
    ],
    ['Aphids', 'Termites', 'Red Rot', 'Leaf Spot', 'Damping of Seedlings'],
  ];
  var l2 = [
    ['Insect', 'Fungus', 'Insect', 'Insect', 'Other'],
    [
      'Fungus',
      'Fungus',
      'Bacteria',
      'Bacteria',
    ],
    [
      'Fungus',
      'Fungus',
      'Fungus',
      'Insect',
    ],
    ['Fungus', 'Insect', 'Insect', 'Insect', 'Insect'],
    ['Fungus', 'Bacteria', 'Insect', 'Insect'],
    ['Insect', 'Insect', 'Fungus', 'Fungus', 'Fungus']
  ];
  var paths = [
    [
      'asset/images/Ricecase.jpg',
      'asset/images/Stackburn.jpg',
      'asset/images/Aphids.jpg',
      'asset/images/Planthopper.jpg',
      'asset/images/Slugsandsnails.jpg'
    ],
    [
      'asset/images/RedRot.jpg',
      'asset/images/Wilt.jpg',
      'asset/images/BacterialLeafBlight.jpg',
      'asset/images/GrassyShoot.jpg',
    ],
    [
      'asset/images/YellowStripeRust.jpg',
      'asset/images/Powderly.jpg',
      'asset/images/RootAndFootRot.jpg',
      'asset/images/Aphids.jpg',
    ],
    [
      'asset/images/BlackMould.jpg',
      'asset/images/Aphids.jpg',
      'asset/images/WhiteGrub.jpg',
      'asset/images/Termites.jpg',
      'asset/images/WireWorms.jpg'
    ],
    [
      'asset/images/RootRot.jpg',
      'asset/images/BacterialBlight.jpg',
      'asset/images/Aphids.jpg',
      'asset/images/Jassids.jpg',
    ],
    [
      'asset/images/Aphids.jpg',
      'asset/images/Termites.jpg',
      'asset/images/RedRot.jpg',
      'asset/images/LeafSpot.jpg',
      'asset/images/Dampling.jpg'
    ],
  ];
  @override
  Widget build(BuildContext context) {
    int temp = widget.i;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromRGBO(242, 242, 242, 1),
        title: Text(
          'Pests And Insects',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: ListView.separated(
          itemCount: l1[temp].length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              contentPadding: EdgeInsets.all(20.0),
              leading: Container(
                padding: EdgeInsets.only(right: 30.0),
                child: Image.asset(paths[temp][index]),
              ),
              title: Text('${l1[temp][index]}'),
              subtitle: Text('${l2[temp][index]}'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                print(index);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Find(
                        l1[temp][index], l2[temp][index], paths[temp][index])));
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Colors.black,
              thickness: 0.2,
            );
          },
        ),
      ),
    );
  }
}
