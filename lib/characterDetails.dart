import 'package:flutter/material.dart';
import 'character.dart';

class ContactDetails extends StatelessWidget {
  final Character character;

  ContactDetails(this.character);

  @override
  Widget build(BuildContext context) {
    final myImage = Hero(
      tag: character.characterName,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 500,
            decoration: new BoxDecoration(
                image: new DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(character.characterImage),
            )),
          ),
          SizedBox(
            width: double.infinity,
            child: Container(
              decoration: new BoxDecoration(
                  color: Colors.black12.withOpacity(0.7)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  character.characterName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'AirbnbCerealBold',
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    final myDetails = Material(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text(character.status),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(character.species),
            )
          ],
        ),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(character.characterName),
        ),
        body: Column(
          children: <Widget>[
            myImage,
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 8.0, right: 8.0),
              child: myDetails,
            ),
          ],
        ),
      ),
    );
  }
}
