import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'character.dart';
import 'characterDetails.dart';
import 'home.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Home(),
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }

  generateRoute(RouteSettings route) {
    final path = route.name.split('/');
    final characterName = path[1];

    Character contact = characters.firstWhere((myroute) => myroute.characterName == characterName);
    return MaterialPageRoute(
      settings: route,
      builder: (context) => ContactDetails(contact),
    );
  }
}