import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewGamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewGamePageState();
}

class _NewGamePageState extends State<NewGamePage> {

  var _blue_score = 0;
  var _red_score = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(color: Colors.greenAccent),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: 'Defensive Player',
                                  fillColor: Colors.blueAccent,
                                  filled: true),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        GestureDetector(
                                          onDoubleTap: () => setState(() {_red_score++;}),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_neg_1,
                                                color: Colors.red,
                                              )),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                        ),
                                        GestureDetector(
                                          onDoubleTap: () => setState(() {_blue_score++;}),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Icon(
                                              Icons.exposure_plus_1,
                                              color: Colors.lightGreenAccent,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.accessibility,
                                      color: Colors.blueAccent,
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_neg_1,
                                                  color: Colors.red,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_plus_1,
                                                color: Colors.lightGreenAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.blueAccent,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_neg_1,
                                                  color: Colors.red,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_plus_1,
                                                color: Colors.lightGreenAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.blueAccent,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                      VerticalDivider(
                        color: Colors.white,
                        width: 5,
                        thickness: 5,
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: 'Offensive Player',
                                  fillColor: Colors.blueAccent,
                                  filled: true),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_neg_1,
                                                  color: Colors.red,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_plus_1,
                                                color: Colors.lightGreenAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.blueAccent,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_neg_1,
                                                  color: Colors.red,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_plus_1,
                                                color: Colors.lightGreenAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.blueAccent,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_neg_1,
                                                  color: Colors.red,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_plus_1,
                                                color: Colors.lightGreenAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.blueAccent,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_neg_1,
                                                  color: Colors.red,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_plus_1,
                                                color: Colors.lightGreenAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.blueAccent,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_neg_1,
                                                  color: Colors.red,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_plus_1,
                                                color: Colors.lightGreenAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.blueAccent,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_neg_1,
                                                  color: Colors.red,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_plus_1,
                                                color: Colors.lightGreenAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.blueAccent,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_neg_1,
                                                  color: Colors.red,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_plus_1,
                                                color: Colors.lightGreenAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.blueAccent,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_neg_1,
                                                  color: Colors.red,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_plus_1,
                                                color: Colors.lightGreenAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.blueAccent,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                    decoration: BoxDecoration(color: Colors.black),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.undo),
                          color: Colors.white,
                          onPressed: () => {},
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, right: 130),
                          child: Row(children: <Widget>[
                            Text('$_blue_score',
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
                                textAlign: TextAlign.center),
                            Text("-",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
                                textAlign: TextAlign.center),
                            Text('$_red_score',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
                                textAlign: TextAlign.center),
                          ]),
                        ),
                        IconButton(
                          icon: Icon(Icons.save),
                          color: Colors.white,
                          onPressed: () => {},
                        ),
                      ],
                    ))),
            Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(color: Colors.greenAccent),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: 'Offensive Player',
                                  fillColor: Colors.redAccent,
                                  filled: true),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_plus_1,
                                                  color:
                                                      Colors.lightGreenAccent,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_neg_1,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.redAccent,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_plus_1,
                                                  color:
                                                      Colors.lightGreenAccent,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_neg_1,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.redAccent,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_plus_1,
                                                  color:
                                                      Colors.lightGreenAccent,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_neg_1,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.redAccent,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_plus_1,
                                                  color:
                                                      Colors.lightGreenAccent,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_neg_1,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.redAccent,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_plus_1,
                                                  color:
                                                      Colors.lightGreenAccent,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_neg_1,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.redAccent,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_plus_1,
                                                  color:
                                                      Colors.lightGreenAccent,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_neg_1,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.redAccent,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_plus_1,
                                                  color:
                                                      Colors.lightGreenAccent,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_neg_1,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.redAccent,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_plus_1,
                                                  color:
                                                      Colors.lightGreenAccent,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_neg_1,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.redAccent,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                      VerticalDivider(
                        color: Colors.white,
                        width: 5,
                        thickness: 5,
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: 'Defensive Player',
                                  fillColor: Colors.redAccent,
                                  filled: true),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_plus_1,
                                                  color:
                                                      Colors.lightGreenAccent,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_neg_1,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.redAccent,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_plus_1,
                                                  color:
                                                      Colors.lightGreenAccent,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_neg_1,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.redAccent,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.exposure_plus_1,
                                                  color:
                                                      Colors.lightGreenAccent,
                                                )),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                Icons.exposure_neg_1,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.accessibility,
                                          color: Colors.redAccent,
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                    ],
                  ),
                ))
          ],
        ));
  }
}
