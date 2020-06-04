import 'package:flutter/material.dart';

class Antarctica extends StatefulWidget {
  @override
  _AntarcticaState createState() => _AntarcticaState();
}

class _AntarcticaState extends State<Antarctica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Center(
          child: new Text("ANTARTİKA KITASI", textAlign: TextAlign.center),
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
                'assets/antarctica.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
