import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
  String equation = "";
  String answer = "0";
  List literals = [];
  void manageEquation(String s) {
    if (s == 'e') {
      equation = "";
    } else {
      equation += s;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.green[500],
                      Colors.yellow[100],
                    ]),
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              'Starlight',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 23,
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                    Icons.calendar_today,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    Icons.stacked_bar_chart,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {}),
                            ],
                          )
                        ],
                      )),
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(
                                right: 15,
                              ),
                              child: Text(
                                equation,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white.withOpacity(0.6),
                                ),
                              )),
                        ],
                      )),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Visibility(
                            visible: answer == '0' ? false : true,
                            child: Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  '=',
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Text(
                              answer,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(color: Colors.white),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color:
                                              Colors.blue[100].withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(
                                              MediaQuery.of(context)
                                                  .size
                                                  .width),
                                        ),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                                flex: 1,
                                                child: FlatButton(
                                                  height: 100,
                                                  minWidth: 100,
                                                  onPressed: () {
                                                    setState(() {
                                                      manageEquation("e");
                                                    });
                                                  },
                                                  shape: CircleBorder(),
                                                  child: Text("AC",
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.w200,
                                                          color: Color.fromRGBO(
                                                              3, 0, 46, 1))),
                                                )),
                                            Expanded(
                                                flex: 1,
                                                child: FlatButton(
                                                  height: 100,
                                                  minWidth: 100,
                                                  onPressed: () {},
                                                  shape: CircleBorder(),
                                                  child: Text("+/-",
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Color.fromRGBO(
                                                              3, 0, 46, 1))),
                                                )),
                                            Expanded(
                                                flex: 1,
                                                child: FlatButton(
                                                  height: 100,
                                                  minWidth: 100,
                                                  onPressed: () {},
                                                  shape: CircleBorder(),
                                                  child: Text("%",
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Color.fromRGBO(
                                                              3, 0, 46, 1))),
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                MediaQuery.of(context)
                                                    .size
                                                    .width),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                  flex: 1,
                                                  child: FlatButton(
                                                    height: 100,
                                                    minWidth: 100,
                                                    onPressed: () {
                                                      setState(() {
                                                        manageEquation('1');
                                                      });
                                                    },
                                                    shape: CircleBorder(),
                                                    child: Text("1",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color:
                                                                Color.fromRGBO(
                                                                    3,
                                                                    0,
                                                                    46,
                                                                    1))),
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: FlatButton(
                                                    height: 100,
                                                    minWidth: 100,
                                                    onPressed: () {
                                                      setState(() {
                                                        manageEquation('2');
                                                      });
                                                    },
                                                    shape: CircleBorder(),
                                                    child: Text("2",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color:
                                                                Color.fromRGBO(
                                                                    3,
                                                                    0,
                                                                    46,
                                                                    1))),
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: FlatButton(
                                                    height: 100,
                                                    minWidth: 100,
                                                    onPressed: () {
                                                      setState(() {
                                                        manageEquation('3');
                                                      });
                                                    },
                                                    shape: CircleBorder(),
                                                    child: Text("3",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color:
                                                                Color.fromRGBO(
                                                                    3,
                                                                    0,
                                                                    46,
                                                                    1))),
                                                  )),
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                MediaQuery.of(context)
                                                    .size
                                                    .width),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                  flex: 1,
                                                  child: FlatButton(
                                                    height: 100,
                                                    minWidth: 100,
                                                    onPressed: () {
                                                      setState(() {
                                                        manageEquation("4");
                                                      });
                                                    },
                                                    shape: CircleBorder(),
                                                    child: Text("4",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color:
                                                                Color.fromRGBO(
                                                                    3,
                                                                    0,
                                                                    46,
                                                                    1))),
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: FlatButton(
                                                    height: 100,
                                                    minWidth: 100,
                                                    onPressed: () {
                                                      setState(() {
                                                        manageEquation('5');
                                                      });
                                                    },
                                                    shape: CircleBorder(),
                                                    child: Text("5",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color:
                                                                Color.fromRGBO(
                                                                    3,
                                                                    0,
                                                                    46,
                                                                    1))),
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: FlatButton(
                                                    height: 100,
                                                    minWidth: 100,
                                                    onPressed: () {
                                                      setState(() {
                                                        manageEquation('6');
                                                      });
                                                    },
                                                    shape: CircleBorder(),
                                                    child: Text("6",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color:
                                                                Color.fromRGBO(
                                                                    3,
                                                                    0,
                                                                    46,
                                                                    1))),
                                                  )),
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                MediaQuery.of(context)
                                                    .size
                                                    .width),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                  flex: 1,
                                                  child: FlatButton(
                                                    height: 100,
                                                    minWidth: 100,
                                                    onPressed: () {
                                                      setState(() {
                                                        manageEquation('7');
                                                      });
                                                    },
                                                    shape: CircleBorder(),
                                                    child: Text("7",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color:
                                                                Color.fromRGBO(
                                                                    3,
                                                                    0,
                                                                    46,
                                                                    1))),
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: FlatButton(
                                                    height: 100,
                                                    minWidth: 100,
                                                    onPressed: () {
                                                      setState(() {
                                                        manageEquation('8');
                                                      });
                                                    },
                                                    shape: CircleBorder(),
                                                    child: Text("8",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color:
                                                                Color.fromRGBO(
                                                                    3,
                                                                    0,
                                                                    46,
                                                                    1))),
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: FlatButton(
                                                    height: 100,
                                                    minWidth: 100,
                                                    onPressed: () {
                                                      setState(() {
                                                        manageEquation('9');
                                                      });
                                                    },
                                                    shape: CircleBorder(),
                                                    child: Text("9",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color:
                                                                Color.fromRGBO(
                                                                    3,
                                                                    0,
                                                                    46,
                                                                    1))),
                                                  )),
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                MediaQuery.of(context)
                                                    .size
                                                    .width),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                  flex: 1,
                                                  child: FlatButton(
                                                    height: 100,
                                                    minWidth: 100,
                                                    onPressed: () {
                                                      setState(() {
                                                        manageEquation('.');
                                                      });
                                                    },
                                                    shape: CircleBorder(),
                                                    child: Text(".",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color:
                                                                Color.fromRGBO(
                                                                    3,
                                                                    0,
                                                                    46,
                                                                    1))),
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: FlatButton(
                                                    height: 100,
                                                    minWidth: 100,
                                                    onPressed: () {
                                                      setState(() {
                                                        manageEquation('0');
                                                      });
                                                    },
                                                    shape: CircleBorder(),
                                                    child: Text("0",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color:
                                                                Color.fromRGBO(
                                                                    3,
                                                                    0,
                                                                    46,
                                                                    1))),
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: FlatButton(
                                                    height: 100,
                                                    minWidth: 100,
                                                    onPressed: () {
                                                      setState(() {
                                                        manageEquation('00');
                                                      });
                                                    },
                                                    shape: CircleBorder(),
                                                    child: Text("00",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color:
                                                                Color.fromRGBO(
                                                                    3,
                                                                    0,
                                                                    46,
                                                                    1))),
                                                  )),
                                            ],
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 10,
                                          right: 10,
                                          left: 10,
                                          bottom: 60),
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15),
                                      decoration: BoxDecoration(
                                        color:
                                            Colors.blue[100].withOpacity(0.1),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                              MediaQuery.of(context)
                                                  .size
                                                  .height),
                                          topRight: Radius.circular(
                                              MediaQuery.of(context)
                                                  .size
                                                  .height),
                                        ),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                              flex: 1,
                                              child: FlatButton(
                                                height: 100,
                                                minWidth: 100,
                                                onPressed: () {
                                                  setState(() {
                                                    manageEquation('÷');
                                                  });
                                                },
                                                shape: CircleBorder(),
                                                child: Text("÷",
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            3, 0, 46, 1))),
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: FlatButton(
                                                height: 100,
                                                minWidth: 100,
                                                onPressed: () {
                                                  setState(() {
                                                    manageEquation('x');
                                                  });
                                                },
                                                shape: CircleBorder(),
                                                child: Text("x",
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            3, 0, 46, 1))),
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: FlatButton(
                                                height: 100,
                                                minWidth: 100,
                                                onPressed: () {
                                                  setState(() {
                                                    manageEquation('-');
                                                  });
                                                },
                                                shape: CircleBorder(),
                                                child: Text("-",
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            3, 0, 46, 1))),
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: FlatButton(
                                                height: 100,
                                                minWidth: 100,
                                                onPressed: () {
                                                  setState(() {
                                                    manageEquation('+');
                                                  });
                                                },
                                                shape: CircleBorder(),
                                                child: Text("+",
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            3, 0, 46, 1))),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                        bottom:
                                            MediaQuery.of(context).size.height /
                                                40,
                                        child: CircleAvatar(
                                          radius: 35,
                                          child: FlatButton(
                                            height: 100,
                                            minWidth: 100,
                                            onPressed: () {
                                              setState(() {
                                                manageEquation('1');
                                              });
                                            },
                                            shape: CircleBorder(),
                                            child: Text("=",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    color: Color.fromRGBO(
                                                        3, 0, 46, 1))),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
