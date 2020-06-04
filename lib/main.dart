import 'package:capital/continents/Africa.dart';
import 'package:capital/continents/Asia.dart';
import 'package:capital/continents/Australia.dart';
import 'package:capital/continents/Europe.dart';
import 'package:capital/continents/NorthAmerica.dart';
import 'package:capital/continents/SouthAmerica.dart';
import 'package:capital/continents/antarctica.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BAŞKENTLER',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Ekranı zorunlu olarak yatay yapar.
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            new Center(child: new Text("DÜNYA", textAlign: TextAlign.center)),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Stack(
          children: <Widget>[
            //Dünya Resmi
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 80,
                child: Image.asset(
                  'assets/world.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            //Antartika Kıtası Yazısı
            Positioned(
              bottom: 0,
              left: MediaQuery.of(context).size.width / 6,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Antarctica()),
                    );
                  },
                  child: new Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width * 7 / 10,
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        "             ANTARTİKA KITASI",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ),
             //Afrika Kıtası Yazısı
            Positioned(
              top: MediaQuery.of(context).size.height * 4 / 13,
              left: MediaQuery.of(context).size.width * 4 / 9,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Africa()),
                    );
                  },
                  child: new Container(
                    height: 80,
                    width: 100,
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        "AFRİKA",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  )),
            ),
            //Avrupa Kıtası Yazısı
            Positioned(
              top: MediaQuery.of(context).size.height * 4 / 28,
              left: MediaQuery.of(context).size.width * 9 / 20,
              child: GestureDetector(
                  onTap: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Europe()),
                    );
                  },
                  child: new Container(
                    height: 50,
                    width: 70,
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        "AVRUPA",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  )),
            ),
            //Asya Kıtası Yazısı
            Positioned(
              top: MediaQuery.of(context).size.height * 4 / 45,
              left: MediaQuery.of(context).size.width * 9 / 16,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Asia()),
                    );
                  },
                  child: new Container(
                    height: 110,
                    width: 210,
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        "ASYA",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  )),
            ),
            //Kuzey Amerika Yazısı
            Positioned(
              top: MediaQuery.of(context).size.height * 4 / 40,
              left: MediaQuery.of(context).size.width * 7 / 60,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NorthAmerica()),
                    );
                  },
                  child: new Container(
                    height: 100,
                    width: 200,
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        "  KUZEY\nAMERİKA",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  )),
            ),
            //Güney Amerika Yazısı
            Positioned(
              top: MediaQuery.of(context).size.height * 7 / 16,
              left: MediaQuery.of(context).size.width * 7 / 27,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SouthAmerica()),
                    );
                  },
                  child: new Container(
                    height: 50,
                    width: 100,
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        "  GÜNEY\nAMERİKA",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  )),
            ),
            //Avusturalya Kıtası Yazısı
            Positioned(
              top: MediaQuery.of(context).size.height * 15 / 29,
              left: MediaQuery.of(context).size.width * 15 / 20,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Australia()),
                    );
                  },
                  child: new Container(
                    height: 20,
                    width: 80,
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        "AVUSTURALYA",
                        style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
