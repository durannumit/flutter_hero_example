import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'character.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: characters.length,
            itemBuilder: (BuildContext context, int position) {
              return Hero(
                tag: characters[position].characterName,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context,
                        'contactdetails/${characters[position].characterName}');
                  },
                  child: Container(
                    child: Stack(
                      children: <Widget>[
                        Card(
                            elevation: 18.0,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            clipBehavior: Clip.antiAlias,
                            margin: EdgeInsets.all(20.0),
                            child: Stack(
                              alignment: AlignmentDirectional.bottomCenter,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.center,
                                  heightFactor: 0.5,
                                  widthFactor: 0.5,
                                  child: Image.asset(
                                      characters[position].characterImage,
                                      scale: 0.5,
                                      fit: BoxFit.cover,
                                  ),
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
                                        '${characters[position].characterName}',
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
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
