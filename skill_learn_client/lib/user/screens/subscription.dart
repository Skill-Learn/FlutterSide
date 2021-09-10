import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:myapp/on_hover.dart';

class Subscription extends StatefulWidget {
  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            color: Colors.blue,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 350,
              height: 540,
              decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Container(
                    height: 180,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                        color:
                            Colors.blue, //                   <--- border color
                        width: 1.0,
                      ),
                    ),
                    height: 160,
                    width: 330,
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    width: 80,
                                    padding: EdgeInsets.all(10),
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20))),
                                    child: Text(
                                      "Free",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),
                                    )),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "Free description one",
                                    style: TextStyle(
                                        fontSize: 15,
                                        decoration: TextDecoration.none,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "Free description two",
                                    style: TextStyle(
                                        fontSize: 15,
                                        decoration: TextDecoration.none,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {});
                          },
                          child: Container(
                            width: 100,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              // border: Border.all(color: Colors.yellow, width: 3),
                              // borderRadius:BorderRadius.all(Radius.circular(10))
                            ),
                            child: Text(
                              "Get Started",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                decoration: TextDecoration.none,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                        color:
                            Colors.blue, //                   <--- border color
                        width: 1.0,
                      ),
                    ),
                    height: 160,
                    width: 330,
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    width: 80,
                                    padding: EdgeInsets.all(10),
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        border: Border.all(
                                            color: Colors.yellow, width: 3),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20))),
                                    child: Text(
                                      "Pro",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          decoration: TextDecoration.none,
                                          color: Colors.white),
                                    )),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    "Pro description one",
                                    style: TextStyle(
                                        fontSize: 15,
                                        decoration: TextDecoration.none,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    "Pro description two",
                                    style: TextStyle(
                                        fontSize: 15,
                                        decoration: TextDecoration.none,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {});
                          },
                          child: Container(
                            width: 100,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              border:
                                  Border.all(color: Colors.yellow, width: 3),
                              // borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Text(
                              "Get Started",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                decoration: TextDecoration.none,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: FlutterLogo(
              size: 150,
            ),
          ),
        ],
      ),
    );
  }
}
