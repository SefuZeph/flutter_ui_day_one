import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UI_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://image.freepik.com/free-photo/kitchen-dining-room-with-vintage-style_23-2148291612.jpg"))),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 10,
            left: 50,
            //1 Way to rotate
            child: Transform.rotate(
              alignment: Alignment.centerLeft,
              angle: pi / 2.0,
              child: Text(
                "BoConcept",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.w900),
              ),
            ),
//           2 Way to rotate
//            child: RotatedBox(
//              quarterTurns: 1,
//              child: Text(
//                "BoConcept",
//                style: TextStyle(
//                    color: Colors.white,
//                    fontSize: 60,
//                    fontWeight: FontWeight.w900),
//              ),
//            ),
//            // 3 Way to rotate
//            child: RotationTransition(
//              alignment: Alignment.centerLeft,
//              turns: AlwaysStoppedAnimation(1 / 4),
//              child: Text(
//                "BoConcept",
//                style: TextStyle(
//                    color: Colors.white,
//                    fontSize: 60,
//                    fontWeight: FontWeight.w900),
//              ),
//            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              child: Center(
                child: FlatButton(
                  onPressed: () {},
                  child: Container(
                    height: 50,
                    width: 220,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "View gallery",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          FontAwesomeIcons.arrowRight,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
