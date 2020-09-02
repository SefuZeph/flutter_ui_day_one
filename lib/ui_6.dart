import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UI_6 extends StatefulWidget {
  UI_6({Key key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<UI_6> {
  double _scrollOffset = 0;

  double _getSigmaValue() {
    double value = (_scrollOffset / 400) * 10;
    value = value.clamp(0.0, 10.0);
    print(value);
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/1028714/pexels-photo-1028714.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: _getSigmaValue(), sigmaY: _getSigmaValue()),
                  child: Container(
                    width: 200,
                    color: Colors.white10,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: NotificationListener<ScrollNotification>(
              // ignore: missing_return
              onNotification: (ScrollNotification notification) {
                _scrollOffset = notification.metrics.pixels;
                setState(() {});
              },
              child: ListView.separated(
                padding: EdgeInsets.only(top: 400),
                separatorBuilder: (BuildContext context, int index) =>
                    Container(
                  color: Colors.white,
                  child: Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                ),
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  switch (index) {
                    case 0:
                      return _buildItemA();
                      break;
                    case 1:
                      return _buildItemB();
                      break;
                    default:
                      return Container(
                        color: Colors.white,
                        height: 60,
                        child: Placeholder(),
                      );
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

_buildItemA() => Container(
      color: Colors.white,
      height: 110,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Egg Benedict",
                    style: TextStyle(
                        color: Color.fromARGB(255, 163, 158, 137),
                        fontSize: 26,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Master the kind of breakfast dishes",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Column(
                children: <Widget>[
                  Text(
                    "6.2k",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Baked",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(
                      FontAwesomeIcons.star,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(
                      FontAwesomeIcons.star,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(
                      FontAwesomeIcons.star,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(
                      FontAwesomeIcons.star,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(
                      FontAwesomeIcons.star,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        "288 Reviews",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )),
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              height: 20,
              width: 90,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Add to Fav",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );

_buildItemB() => Container(
      color: Colors.white,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 60.0, top: 20),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Servings",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "2PP",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Prep Time",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "30 min",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Cook Time",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "50 min",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Description",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 2,),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
