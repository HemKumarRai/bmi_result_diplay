import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(BMIResult());

class BMIResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: <Widget>[
            Icon(
              Icons.list,
              size: 30,
            ),
            SizedBox(
              width: 100,
            ),
            Text(
              "BMI CALCULATOR",
            ),
          ],
        ),
      ),
      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Text(
            "Your Result",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  Reusable_Card(
                    text: 'NORMAL',
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "22.1",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 80,
                      ),
                    ),
                  ),
                  ReucsedContainer(
                    string: 'Normal BMI range:',
                    colour: Color(0xFF616270),
                    fontWeight: FontWeight.bold,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "18,5-25 kg/m2",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ReucsedContainer(
                    string: 'You have a normal body weight',
                    fontWeight: FontWeight.bold,
                  ),
                  Container(
                    color: Color(0xFF181A2E),
                    height: 60,
                    width: 200,
                    margin: EdgeInsets.only(top: 40),
//                    decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "SAVE RESULT",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              color: Color(0xFF111328),
              margin: EdgeInsets.all(20.0),
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            height: 80.0,
            width: double.infinity,
            margin: EdgeInsets.only(top: 15.0),
            child: Center(
              child: Text(
                'RE-CALCULATE YOUR BMI',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ReucsedContainer extends StatelessWidget {
  ReucsedContainer({this.string, this.colour, this.fontWeight});
  final String string;
  final Color colour;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Text(
        string,
        style: TextStyle(fontWeight: fontWeight, fontSize: 20, color: colour),
      ),
    );
  }
}

class Reusable_Card extends StatelessWidget {
  Reusable_Card({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFF21CE72),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
