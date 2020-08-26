import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UI_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://image.freepik.com/free-photo/smiling-young-woman-swimsuit-standing-with-monstera-leaf-studio_23-2148165115.jpg"))),
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  color: Colors.blue.withOpacity(0.2),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "ATHENA",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 4),
                ),
                Text(
                  "skip",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Shop the \nmost modern \nessentials",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Icon(
                  FontAwesomeIcons.arrowRight,
                  color: Colors.white,
                  size: 15,
                )
              ],
            ),
          ),
          Positioned(
              bottom: 30,
              left: 20,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 5,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2.5)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2.5))),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2.5))),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2.5)))
                ],
              ))
        ],
      ),
    );
  }
}
