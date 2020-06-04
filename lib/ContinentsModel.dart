import 'package:capital/CreateMap.dart';
import 'package:flutter/material.dart';

class ContinentsModel extends StatelessWidget {
  const ContinentsModel({Key key, this.name})
      : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    
    CreateMap createMap = CreateMap(
      name: name,
    );

    return Scaffold(
      appBar: AppBar(
        title: new Center(child: new Text(name, textAlign: TextAlign.center)),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: <Widget>[
            Scaffold(
              body: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(5.0),
                alignment: Alignment.centerLeft,
                child: AbsorbPointer(
                  absorbing: false,
                  child: createMap,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
