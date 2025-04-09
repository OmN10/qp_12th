import 'package:flutter/material.dart';
import 'package:qp_12th/view/jee_advanced.dart';
import 'package:qp_12th/view/jee_main.dart';
import 'package:qp_12th/view/mh_cet.dart';
import 'package:qp_12th/view/neet.dart';

class Dd extends StatefulWidget {
  const Dd({super.key});

  @override
  State<Dd> createState() => _DdState();
}

class _DdState extends State<Dd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: 300,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/home.png",
                ),
                fit: BoxFit.fill)),
      ),
      Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Container(
              height: MediaQuery.of(context).size.height / 1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/home1.png"), fit: BoxFit.fill)),
              child: Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "12 TH STD QUESTION PAPERS",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 8),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 20,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => JeeMain()),
                          );
                        },
                        child: Container(
                          height: 100,
                          child: Row(
                            children: [
                              Image.asset("assets/omg.PNG",
                                  height: 100, width: 70),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("JEE MAINS",
                                      style: TextStyle(
                                        fontSize: 25,
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("Original question papers & answers",
                                      style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Image.asset("assets/omg3.png", height: 50),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 20,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => JeeAdvanced()));
                        },
                        child: Container(
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/omgg.PNG",
                                height: 100,
                                width: 70,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "JEE ADVANCED",
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Free Questions papers",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Image.asset(
                                "assets/omk.png",
                                height: 55,
                              )
                            ],
                          ),
                          height: 100,
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 20,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => MhCet()));
                        },
                        child: Container(
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/mgcet.PNG",
                                height: 100,
                                width: 70,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "MH-CET",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Past year paper & solutions",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 55),
                              Image.asset("assets/mhcet.PNG")
                            ],
                          ),
                          height: 100,
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 20,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Neet()));
                        },
                        child: Container(
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/neet.PNG",
                                height: 100,
                                width: 70,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "NEET",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Latest Question paper available",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Image.asset(
                                "assets/neet1.PNG",
                                height: 70,
                              )
                            ],
                          ),
                          height: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ))),
      Positioned(
        top: 140,
        right: 130,
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/Logo.png",
                  ),
                  fit: BoxFit.fill)),
        ),
      ),
    ]));
  }
}
