import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      children: <Widget>[
        Image.asset("coche.jpg", fit: BoxFit.contain, width: 200),
        Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Text>[
              Text("Nombre"),
              Text("Descripción"),
              Text("Precio")
            ]))
      ],
    ));
  }
}
