import 'package:capital/ContinentsModel.dart';
import 'package:flutter/material.dart';

class Europe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContinentsModel(
      key: Key("europeKey"),
      name: "Avrupa",
    );
  }
}
