import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          textColor: Colors.green,
          size: 25.0,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          CreditsAndBuyMore(),
          SizedBox(height: 40.0),
          Headings(),
          SizedBox(height: 10.0),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            childAspectRatio: 4 / 5,
            children: [
              _buildCard(
                  'Tom', "Available for the next 5 hours", "Available", 1),
              _buildCard('Tom', "Available for the next 5 hours", "Away", 2),
              _buildCard(
                  'Tom', "Available for the next 5 hours", "Available", 3),
              _buildCard('Tom', "Available for the next 5 hours", "Away", 4),
              _buildCard(
                  'Tom', "Available for the next 5 hours", "Available", 5),
              _buildCard('Tom', "Available for the next 5 hours", "Away", 6),
              _buildCard('Tom', "Available for the next 5 hours", "Away", 7),
              _buildCard(
                  'Tom', "Available for the next 5 hours", "Available", 8),
              _buildCard('Tom', "Available for the next 5 hours", "Away", 9),
            ],
          )
        ],
      ),
    );
  }
}

Widget _buildCard(String name, String info, String status, int cardIndex) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    elevation: 7.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 26.0),
        Stack(
          children: [
            Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.green,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.the-sun.com/wp-content/uploads/sites/6/2020/05/NINTCHDBPICT000582609272.jpg"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.0),
              height: 20.0,
              width: 20.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: status == "Away" ? Colors.amber : Colors.green,
                border: Border.all(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 3.0,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 16.0),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            info,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16.0,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 15.0),
        Expanded(
          child: Container(
            width: 175.0,
            decoration: BoxDecoration(
              color: status == 'Away' ? Colors.grey : Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Center(
              child: Text(
                'Request',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    ),
    margin: cardIndex.isEven
        ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
        : EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),
  );
}

class Headings extends StatelessWidget {
  const Headings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'MY COACHES',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
            ),
          ),
          Text(
            'VIEW PAST SESSIONS',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
            ),
          )
        ],
      ),
    );
  }
}

class CreditsAndBuyMore extends StatelessWidget {
  const CreditsAndBuyMore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment(0.0, -0.40),
          height: 100.0,
          color: Colors.white,
          child: Text(
            "Get coaching",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                blurRadius: 2.0,
                color: Colors.grey,
              )
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                    child: Text(
                      'YOU HAVE',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(25.0, 45.0, 5.0, 25.0),
                    child: Text(
                      '206',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(width: 100.0),
              Container(
                height: 50.0,
                width: 125.0,
                decoration: BoxDecoration(
                  color: Colors.greenAccent[100]?.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    "Buy More",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
