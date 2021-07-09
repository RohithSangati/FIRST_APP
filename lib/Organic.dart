import 'package:flutter/material.dart';

class Organic extends StatelessWidget {
  const Organic({Key? key}) : super(key: key);

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
        margin: EdgeInsets.all(10.0),
        color: Color.fromRGBO(230, 230, 230, 1),
        shadowColor: Color.fromRGBO(230, 230, 230, 1),
        elevation: 5.0,
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (BuildContext context) => OrganicInfo()),
            );
          },
          title: Text('Organic Farming Tips'),
          subtitle: Text('Make Your Farm Healthy......'),
          trailing: Icon(Icons.navigate_next),
        ),
      ),
    );
  }
}

class OrganicInfo extends StatefulWidget {
  const OrganicInfo({Key? key}) : super(key: key);

  @override
  _OrganicInfoState createState() => _OrganicInfoState();
}

class _OrganicInfoState extends State<OrganicInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Organic Farming Tips',
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
              MaterialPageRoute(builder: (BuildContext context) => Organic()),
            );
          },
          child: Icon(
            Icons.navigate_before,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'START WITH A PLAN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromRGBO(230, 0, 0, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'Just like any endeavour, the smart way to start is by planning. Success doesn’t happen by accident, so come up with a business plan that takes into account your financial situation, your ideal crops, how much you plan to invest and hope to yield, and what kinds of equipment to buy',
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'CONSULT OTHER ORGANIC FARMERS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromRGBO(230, 0, 0, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'In the planning stages of your process, talk to other people who are already farming organically. Find out what works for them. Ask them what they wish they had known in their beginning stages. You can also find helpful resources online including webinars, workshops, and certification programs for farmers across Ontario. ',
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'KNOW THE CORRECT TIME TO PLANT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromRGBO(230, 0, 0, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'Seeds respond to certain soil temperatures, so planting too soon can be wasteful. Corn seeds require that the soil be at least 12°C (55℉) in order to start sprouting. Any cooler, and they may take weeks to sprout, or worse, not sprout at all. Different vegetables will have different temperature tolerances, so make sure you research ideal planting times for the crops you choose..',
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'WAIT UNTIL THE SOIL TEMP IS OPTIMAL FOR GERMINATION',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromRGBO(230, 0, 0, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'Corn is a warm-season crop. While it can survive at a minimum of 10°C (50℉), it is recommended that you wait until there are consistent warm temperatures in your region. Preferred soil temperature for corn seed germination ranges from 16°C-35°C (60.8℉ – 95℉). With this in mind, it’s important be patient and ensure that you are not planting too early.',
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'INCREASING NUTRIENTS IN THE SOILS THROUGH COVER CROPS, MANURE, ETC',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromRGBO(230, 0, 0, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'Methods like adding manure and additional plants can provide benefits to your crops by adding extra nutrients and stabilizing the soil. Cover crops help prevent soil erosion, increase water infiltration, recycle nutrients, fight against insects, and prevent the growth of weeds through soil competition. Since cover crops also protect the soil from the impact of rain and wind, erosion will decrease and cause nutrient efficiency to rise.',
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'CONSIDER THE CLIMATE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromRGBO(230, 0, 0, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'Where you live will have an impact on which plants will thrive on your farm, when you plant, and when to harvest. Your decision of what to plant will also be influenced by what’s going to provide the best economic returns, and will be in demand for sale. Again, consulting local farmers will help, as well as researching which types of crops thrive using organic methods in your geographic region',
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'CONSIDER OTHER ECO-FRIENDLY OPTIONS, TOO',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromRGBO(230, 0, 0, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'Try incorporating other environmentally friendly – and economically friendly – alternatives into your organic farm, such as harnessing solar energy. Using sustainable resources is a great way to further your organic endeavours. Sharing equipment with other local farmers can also be beneficial, especially if you’re new to the lifestyle and starting small. By splitting the costs and sharing the tools with your neighbours, you will cut down on investment costs and enjoy higher profit margins.',
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'TRANSITION SLOWLY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromRGBO(230, 0, 0, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'If you’re transitioning from a non-organic farm, transition slowly, as your soil may also be feeling the difference from no longer using chemical fertilizers. It will take some time to bounce back, so use methods such as planting trap crops and companion crops to keep your soil in good shape between main crops. ',
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'INTRODUCE FRIENDLY INSECTS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromRGBO(230, 0, 0, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'Depending on which plants you’re growing, there are insects that will help them thrive, and will protect your plants from other harmful insects. It’s all part of a balanced ecosystem. For example, Ladybugs are incredibly important when it comes to protecting your farm from aphids, mites, mealybugs and other pests..',
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'KNOW THE CERTIFICATION REQUIREMENTS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromRGBO(230, 0, 0, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'Being certified as an organic farm comes with certain requirements. Research what those things are, and be sure you can prove that you’re doing everything right in order to get that certification. Check your local government website to find out what these stipulations include. Ontarians can find the proper information on certifications for organic farming by visiting the Ontario Agriculture, Food, and Rural Affairs website. For Canadians outside of Ontario, visit the Canadian Food & Inspection Agency to see how you can become a certified Organic Farmer.',
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'HARVEST RIGHT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromRGBO(230, 0, 0, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'One of the many benefits of organic farming is the financial reward of high output value. Harvesting at the right time is as crucial to getting the best results, and optimal harvesting times will vary depending on the types of crops you are growing',
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'ROTATE YOUR CROPS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromRGBO(230, 0, 0, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'After you’ve harvested your crops, leave the soil in the best condition possible for starting the next season’s planting. Rotate in another crop of your choice to balance the soil’s composition before planting your main crop again next season. This will help create diversity in crop residues in the soil, which in turn provides a wide variety of beneficial soil organisms. Learn more information and the benefits of crop rotation from The Ontario Ministry of Agriculture, Food & Rural Affairs.',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
