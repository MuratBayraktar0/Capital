import 'package:capital/ContinentsModel.dart';
import 'package:flutter/material.dart';

class Africa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContinentsModel(
      key: Key("africaKey"),     
      name: "Afrika",
    );
  }
}
