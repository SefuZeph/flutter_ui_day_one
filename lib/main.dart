import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// UI screen per  week demo week 1 from (Aug 17 - Aug 21)

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Color(0xfff79631),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://image.freepik.com/free-vector/sunset-mountains-landscape-with-gradient-colors_23-2148266711.jpg")),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3),
                                shape: BoxShape.circle),
                            width: 35,
                            height: 35,
                            child: FlatButton(
                              padding: EdgeInsets.all(0),
                              child: Text("X",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Yosemite\nValley, US",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "\$546",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "per \nperson",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white.withOpacity(0.8),
                                fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            IconData(59448, fontFamily: "MaterialIcons"),
                            color: Color.fromARGB(255, 255, 183, 59),
                            size: 15,
                          ),
                          Icon(
                            IconData(59448, fontFamily: "MaterialIcons"),
                            color: Color.fromARGB(255, 255, 183, 59),
                            size: 15,
                          ),
                          Icon(
                            IconData(59448, fontFamily: "MaterialIcons"),
                            color: Color.fromARGB(255, 255, 183, 59),
                            size: 15,
                          ),
                          Icon(
                            IconData(59448, fontFamily: "MaterialIcons"),
                            color: Color.fromARGB(255, 255, 183, 59),
                            size: 15,
                          ),
                          Icon(
                            IconData(59448, fontFamily: "MaterialIcons"),
                            color: Colors.white,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        "Introduce",
                        style: TextStyle(
                            color: Color.fromARGB(255, 16, 21, 90),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        "[T]he far-famed valley came suddenly into view throughout almost its whole extent: the noble walls, sculptured into endless variety of domes and gables, spires and battlements and plain mural precipices, all a-tremble with the thunder tones of the falling water. The level bottom seemed to be dressed like a garden, sunny meadows here and there and groves of pine and oak, the river of Mercy sweeping in majesty through the midst of them and flashing back the sunbeams. --John Muir",
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        maxLines: 6,
                        style:
                            TextStyle(color: Color.fromARGB(255, 16, 21, 90)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 220, 220),
                          borderRadius: BorderRadius.circular(16)),
                      child: Icon(FontAwesomeIcons.heart,
                          size: 30, color: Color.fromARGB(255, 243, 102, 108)),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 230, 236, 243),
                          borderRadius: BorderRadius.circular(16)),
                      child: Icon(FontAwesomeIcons.share,
                          size: 30, color: Color.fromARGB(255, 6, 15, 98)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(233, 6, 15, 98),
                          borderRadius: BorderRadius.circular(16)),
                      child: Text(
                        "Book",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
