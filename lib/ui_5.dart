import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UI_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 231, 231, 232),
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 3 / 4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://image.freepik.com/free-photo/round-glowing-light-bulbs-interior_127345-99.jpg"))),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    child: Icon(
                      FontAwesomeIcons.shoppingBasket,
                      color: Colors.black,
                      size: 20,
                    ),
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        )),
                  ),
                )
              ],
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Icon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.black,
                size: 15,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            child: Container(
              height: 230,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 5),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemExtent: MediaQuery.of(context).size.width * 0.8,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 20, right: 10),
                                  child: Column(
                                    children: <Widget>[
                                      Text("LittMconn",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700)),
                                      Text("Theo II",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w900)),
                                      Text("Head Lamp",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w700)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: SizedBox(
                                    height: 40,
                                    width: 60,
                                    child: Placeholder(),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: SizedBox(
                              width: 230,
                              child: Text(
                                "LittMcann Thero II is a classic model of a head lamp will will fit an elegant interior.",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "\$92.00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20),
                                  ),
                                  Spacer(),
                                  Container(
                                    child: Center(
                                        child: Text(
                                      "DETAILS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    )),
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 183, 152, 182),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
