import 'package:flutter/material.dart';
import './harvestinfo.dart';

class Harvesting extends StatefulWidget {
  var index;
  Harvesting(this.index);

  @override
  _HarvestingState createState() => _HarvestingState();
}

class _HarvestingState extends State<Harvesting> {
  var l = [
    [
      [
        'Manual Harvesting',
        'asset/images/PaddyManual.jpg',
        'Manual harvesting makes use of traditional threshing tools such as threshing racks, simple treadle threshers and animals for trampling.The most common method for harvesting rice in Asia is the manual system. The rice crop is cut by simple hand tools including sickles cutting 15-25 cm above ground level, and simple hand-heldcknives to cut just below the panicle (e.g. ani ani in Indonesia). In Bangladesh and India, the harvested crop is bundled to improve handling, and dried in the field. The manual system of harvesting is very effective in lodged crop conditions, however it is labor intensive. Manual harvesting requires 40 to 80 person-hours per ha. It will take additional labor to collect the harvested crop.'
      ],
      [
        'Machine Reaping And Machine Threshing',
        'asset/images/PaddyManualAndMachine.jpg',
        'Manual harvesting makes use of traditional threshing tools such as threshing racks, simple treadle threshers and animals for trampling.Given the high labor requirements of manual threshing, in many countries threshing of paddy is now mechanized by use of small stationary machine threshers. Depending on farming systems, post-harvest practices and infrastructure, threshers come in different sizes and range from small portable units without cleaner (Iloilo, Philippines) to large, truck mounted units (Thailand). Threshing is either done in the field, near the field or at the nearest road. Threshers can be classified as either feed-in type or hold-on type machines. Most threshers for paddy are of feed-in type, where the whole crop is fed through the thresher ensuring high throughput but also having a high power requirement. Hold-on threshers, in which only panicles are fed into the machine, generally have a lower capacity than feed-in threshers and are primarily used in areas where rice straw is bundled and stored for later use. Most threshers for paddy have peg-tooth threshing drums, however threshing drums fitted with wire-loops are used if power is limited or in hold-on threshers. '
      ],
      [
        'Manual Harvesting And Machine Threshing',
        'asset/images/PaddyMachine.jpg',
        'A reaper cuts and lays the crop in a line. Threshing and cleaning can then be performed manually or by machine.Given the high labor requirements of manual threshing, in many countries threshing of paddy is now mechanized by use of small stationary machine threshers. Depending on farming systems, post-harvest practices and infrastructure, threshers come in different sizes and range from small portable units without cleaner (Iloilo, Philippines) to large, truck mounted units (Thailand). Threshing is either done in the field, near the field or at the nearest road.'
      ],
      [
        'Combine Harvesting',
        'asset/images/PaddyCombine.jpg',
        'Combines are equipped with removable header that are designed for particular crops. The standard header, sometimes called a grain platform, is equipped with a reciprocating knife cutter bar, and features a revolving reel with metal teeth to cause the cut crop to fall into the auger once it is cut. A variation of the platform, a "flex" platform, is similar but has a cutter bar that can flex over contours and ridges to cut soybeans that have pods close to the ground. A flex head can cut soybeans as well as cereal crops, while a rigid platform is generally used only in cereal grains.Some wheat headers, called "draper" headers, use a fabric or rubber apron instead of a cross auger. Draper headers allow faster feeding than cross augers, leading to higher throughputs due to lower power requirements. On many farms, platform headers are used to cut wheat, instead of separate wheat headers, so as to reduce overall costs.'
      ],
    ],
    [
      [
        'Mechanical Harvesting',
        'asset/images/SugarMech.jpg',
        'Sugarcane is harvested by mechanical harvester which move along the rows of cane removing the leafy tops of the cane and cutting the stalk into short pieces or "billets". Billets are loaded into bins which are towed alongside the harvester. When full, the bins are taken by road or tramway to the sugar mill.The field capacity of mechanical cane harvesters varies with the size (2.5 to 4 ha per day of 8 hours.Mechanical harvesting systems are designed to achieve the mass removal of the commodity during the harvesting season at once. This method has been practiced by shaking the trunks, limbs, and canopies of plants.'
      ],
      [
        'Manual Harvesting',
        'asset/images/SugarManual.jpg',
        'Hand knives, cutting blade or hand axes are used for manual harvesting. It requires skilled labourers as improper harvest of cane leads to loss of cane and sugar yield, poor juice quality and problems in milling due to extraneous matter. Manual harvesting has many advantages compared with the mechanical harvesting of most fruit crops. The most important advantage is visual image processing ability which enables workers rapidly to detect fruit suitable for harvest and direct their hand to the fruit selected for detachment. Lacking the necessary computer based image processing equipment, designers of mechanical harvesters have settled for mass removal approaches that typically results in more damage than normal when fruit is harvested individually.'
      ],
    ],
    [
      [
        'Harvesting',
        'asset/images/WheatHarvest.jpg',
        'Harvesting stage comes when normally the plant turns golden yellow and becomes brittle.The grains become hard and the straw turns dry. The crop should be harvested at physiological maturity when the grain moisture is around 19-20%.The harvesting time varies from zone to zone and state to state. Harvest and thresh high yielding wheat varieties as soon as fully ripe, to avoid grain shattering. The harvesting of wheat can be started five days earlier than dead ripe stage without adverse effect on the yield or quality of the grains. The harvesting can be done with the help of serrated sickle manually or with the help of bullock drawn reapers. Harvesting can also be done with the help combine harvesters they can also be hired as they are easily available on hire basis. The advantage of using the combine harvetser is that it does the job of harvesting, winnowing and thresing at the same time. Tractor-operated vertical conveyer reaper windrowers can also be used for harvesting.'
      ],
      [
        'Threshing',
        'asset/images/Wheat Threshing.jpg',
        'If the harvesting is done with the help of combine harvester then there is no need for threshing the grains as the out put is already in the from of threshed grain.In other cases do threshing by power-operated threshers OR By threading the head of the wheat with the bullock cart. OR By beating them with the help of bamboo sticks. OR By running the tractor over the heads.By doing the above operations the grains are separated from the head.Thus the grains are dried on the threshing floor for reducing the grain moisture percentage. Use power thresher with proper safety devices to prevent accidents.'
      ],
      [
        'Combine Harvesting',
        'asset/images/WheatCombine.jpg',
        'Combines are equipped with removable header that are designed for particular crops. The standard header, sometimes called a grain platform, is equipped with a reciprocating knife cutter bar, and features a revolving reel with metal teeth to cause the cut crop to fall into the auger once it is cut. A variation of the platform, a "flex" platform, is similar but has a cutter bar that can flex over contours and ridges to cut soybeans that have pods close to the ground. A flex head can cut soybeans as well as cereal crops, while a rigid platform is generally used only in cereal grains.Some wheat headers, called "draper" headers, use a fabric or rubber apron instead of a cross auger. Draper headers allow faster feeding than cross augers, leading to higher throughputs due to lower power requirements. On many farms, platform headers are used to cut wheat, instead of separate wheat headers, so as to reduce overall costs.'
      ],
    ],
    [
      [
        'Manual Harvesting',
        'asset/images/Groundnutmanual.jpg',
        'Manual method of removing groundnut pods from groundnut plants takes 175-200 women hours per hectare. Since it is a labour intensive operation, scarcity of labour is often experienced during peak harvesting seasons. The power operated throw-in type groundnut thresher suitable for freshly harvested groundnut crop will be of immense use to the groundnut growers.Harvesting is a labour consuming, expensive and tedious operation. The moisture content of the soil at the time of harvesting indicates the ease or difficulty with which harvesting can be done. Groundnut plant has an indeterminate growth habit. Flowering extends over 2 months in Spanish-bunch types and over 3 months in Virginia-runner types. It takes about 60 days for the pod to develop fully after the flower appears. It is therefore, usual to find pods in different stages of maturity at harvest.'
      ],
      [
        'Using Disc Harrow',
        'asset/images/GroundnutMech.jpg',
        'For harvesting and winnowing groundnut crop at soil moisture levels of 8-15%, this harvester is used. This tractor-mounted implement covers an area of 2 hectares per day and the cost of operating the implement is Rs.660/ha. The cost of the unit is Rs.20,000/- Stripping of pods from the plants is done by several methods. In bunch types, the plants are stacked in heaps with pod ends exposed. The pegs become brittle within a week and the pods are stripped with hand. In some areas, the pods are stripped by hand immediately after pulling out from the soil on the same day. For this purpose a simple comb-type stripper and groundnut thresher are available and these are useful for bunch types. One more powertiller operator groundnut harvestor is developed by TNAU which is suitable for harvesting all varieties of groundnut. It is suitable for all makes of 10-12 hp powertillers. It saves time and labour.'
      ],
    ],
    [
      [
        'Mechanical Harvesting',
        'asset/images/CottonMech.jpg',
        'Cotton harvester, machine for harvesting cotton bolls. Mechanical cotton harvesters are of two basic types, strippers and pickers. Stripper-type harvesters strip the entire plant of both open and unopened bolls along with many leaves and stems. The unwanted material is then removed by special devices at the gin. Strippers work most satisfactorily after frost has killed the green vegetative growth.Picker machines, often referred to as spindle-type harvesters, remove the cotton from open bolls and leave the bur on the plant. The spindles, which rotate on their axes at a high speed, are attached to a drum that also turns, causing the spindles to enter the plant. The cotton fibre is wrapped around the moistened spindles and then taken off by a special device called the doffer, from which the cotton is delivered to a large basket carried above the machine. Although a cotton harvester was patented in the U.S. in 1850, economic and social conditions prevented further development and full acceptance until the 1940s.'
      ],
      [
        'Manual Harvesting',
        'asset/images/CottonManual.jpg',
        'Manual harvesting/picking of cotton is quite labour intensive operation. It requires 2-3 pickings and sometimes even more. Mechanical harvesting of cotton is widely used in USA, Russia, Egypt etc. There are two type of mechanical harvesting equipment popularly known as cotton pickers and strippers. Both these types of machines require the cotton variety with compact sympodial or semi-sympodial plants with synchronized boll opening.'
      ],
    ],
    [
      [
        'Plucking Of Cobs',
        'asset/images/MaizePluck.jpg',
        ' Cob is plucked by hand either from stand- ing plant or harvested plant. Mostly, harvesting of maize crop is done manually with a traditional sickle. After that, cobs are dried in the sun- shine to reduce moisture content to 15-21 percent (d.b). Different parts of plucked cob (un-dehusked) are shown in Fig. 4 . Dehusking of cob is done by hand by removing the outer sheath and grain is obtained from the dehusked cob (the pro- cess is called shelling). Traditional practice followed in the country for obtaining grain from dehusked cobs is either by beating the dehusked cobs with sticks or with fingers or a sickle.'
      ],
      [
        'Stalk Cutting',
        'asset/images/MaizeStock.jpg',
        'The plants are cut and piled up in the shade and the cobs are removed after two or three days of harvesting. The dried plants are used for haymaking.Maize grown for fodder are harvested at the milk to early dough stage. The earlier harvested crop usually yields less and is poor in protein content. For silage making late dough stage is preferred.'
      ],
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(242, 242, 242, 1),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Harvesting Methods',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          padding: EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
          itemCount: l[widget.index].length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Color.fromRGBO(242, 242, 242, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(15.0),
                  right: Radius.circular(15.0),
                ),
                side: BorderSide(
                  color: Color.fromRGBO(0, 122, 153, 1),
                ),
              ),
              elevation: 5.0,
              margin: EdgeInsets.symmetric(vertical: 13.0),
              shadowColor: Colors.grey,
              child: ListTile(
                trailing: Icon(Icons.navigate_next),
                contentPadding: EdgeInsets.all(10.0),
                title: Text(
                  '${l[widget.index][index][0]}',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(0, 122, 153, 1),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Find(
                          l[widget.index][index][0],
                          l[widget.index][index][1],
                          l[widget.index][index][2])));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
