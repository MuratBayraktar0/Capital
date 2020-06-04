import 'package:flutter/material.dart';

class Australia extends StatefulWidget {
  @override
  _AustraliaState createState() => _AustraliaState();
}

class _AustraliaState extends State<Australia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Center(
          child: new Text("Avusturalya", textAlign: TextAlign.center),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 80,
              child: Image.asset(
                'assets/australia.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
