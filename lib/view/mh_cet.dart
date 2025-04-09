import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qp_12th/controller/mh-cet.controller.dart';
import 'package:qp_12th/view/dd.dart';
import 'package:qp_12th/view/viewPdf.dart';

class MhCet extends StatefulWidget {
  const MhCet({super.key});

  @override
  State<MhCet> createState() => _MhCetState();
}

class _MhCetState extends State<MhCet> {
  @override
  void initState() {
    context.read<Mhcetcontroller>().getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/mhcet_Layout-1.png"),
                    fit: BoxFit.fill)),
            child: ListView(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "MH-CET",
                        style: TextStyle(
                            fontSize: 40,
                            height: 10,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 70, 153, 192)),
                      ),
                    ),
                  ),

                  context.watch<Mhcetcontroller>().ofData == null
                      ? CircularProgressIndicator()
                      : Column(
                          children: [
                            for (var i in context
                                .watch<Mhcetcontroller>()
                                .ofData!) ...[
                              Card(
                                color: Colors.white,
                                child: Container(
                                  child: ListTile(
                                      leading: Text(
                                        "${i.year}",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      trailing: IconButton(
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => ShowPdf(
                                                      i.file!, i.year!)));
                                        },
                                        icon: Image.asset(
                                          "assets/Ds1.PNG",
                                          height: 42,
                                          width: 40,
                                          fit: BoxFit.fill,
                                        ),
                                      )),
                                  height: 50,
                                ),
                              ),
                            ]
                          ],
                        )

                  // Card(
                  //   color: Colors.white,
                  //   child: Container(
                  //     child: ListTile(
                  //         leading: Text(
                  //           "2017 Question Paper",
                  //           style: TextStyle(fontSize: 20),
                  //         ),
                  //         trailing: IconButton(
                  //           onPressed: () {
                  //             Navigator.pushReplacement(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                     builder: (context) => Dd()));
                  //           },
                  //           icon: Image.asset(
                  //             "assets/Ds1.PNG",
                  //             height: 40,
                  //             width: 40,
                  //             fit: BoxFit.fill,
                  //           ),
                  //         )),
                  //     height: 50,
                  //   ),
                  // ),
                  // Card(
                  //   color: Colors.white,
                  //   child: Container(
                  //     child: ListTile(
                  //         leading: Text(
                  //           "2016 Question Paper",
                  //           style: TextStyle(fontSize: 20),
                  //         ),
                  //         trailing: IconButton(
                  //           onPressed: () {
                  //             Navigator.pushReplacement(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                     builder: (context) => Dd()));
                  //           },
                  //           icon: Image.asset(
                  //             "assets/Ds1.PNG",
                  //             height: 40,
                  //             width: 40,
                  //             fit: BoxFit.fill,
                  //           ),
                  //         )),
                  //     height: 50,
                  //   ),
                  // ),
                  // Card(
                  //   color: Colors.white,
                  //   child: Container(
                  //     child: ListTile(
                  //         leading: Text(
                  //           "2015 Question Paper",
                  //           style: TextStyle(fontSize: 20),
                  //         ),
                  //         trailing: IconButton(
                  //           onPressed: () {
                  //             Navigator.pushReplacement(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                     builder: (context) => Dd()));
                  //           },
                  //           icon: Image.asset(
                  //             "assets/Ds1.PNG",
                  //             height: 40,
                  //             width: 40,
                  //             fit: BoxFit.fill,
                  //           ),
                  //         )),
                  //     height: 50,
                  //   ),
                  // ),
                  // Card(
                  //   color: Colors.white,
                  //   child: Container(
                  //     child: ListTile(
                  //         leading: Text(
                  //           "2014 Question Paper",
                  //           style: TextStyle(fontSize: 20),
                  //         ),
                  //         trailing: IconButton(
                  //           onPressed: () {
                  //             Navigator.pushReplacement(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                     builder: (context) => Dd()));
                  //           },
                  //           icon: Image.asset(
                  //             "assets/Ds1.PNG",
                  //             height: 40,
                  //             width: 40,
                  //             fit: BoxFit.fill,
                  //           ),
                  //         )),
                  //     height: 50,
                  //   ),
                  // ),
                  // Card(
                  //   color: Colors.white,
                  //   child: Container(
                  //     child: ListTile(
                  //         leading: Text(
                  //           "2013 Question Paper",
                  //           style: TextStyle(fontSize: 20),
                  //         ),
                  //         trailing: IconButton(
                  //           onPressed: () {
                  //             Navigator.pushReplacement(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                     builder: (context) => Dd()));
                  //           },
                  //           icon: Image.asset(
                  //             "assets/Ds1.PNG",
                  //             height: 40,
                  //             width: 40,
                  //             fit: BoxFit.fill,
                  //           ),
                  //         )),
                  //     height: 50,
                  //   ),
                  // ),
                  // Card(
                  //   color: Colors.white,
                  //   child: Container(
                  //     child: ListTile(
                  //         leading: Text(
                  //           "2012 Question Paper",
                  //           style: TextStyle(fontSize: 20),
                  //         ),
                  //         trailing: IconButton(
                  //           onPressed: () {
                  //             Navigator.pushReplacement(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                     builder: (context) => Dd()));
                  //           },
                  //           icon: Image.asset(
                  //             "assets/Ds1.PNG",
                  //             height: 40,
                  //             width: 40,
                  //             fit: BoxFit.fill,
                  //           ),
                  //         )),
                  //     height: 50,
                  //   ),
                  // ),
                  // Card(
                  //   color: Colors.white,
                  //   child: Container(
                  //     child: ListTile(
                  //         leading: Text(
                  //           "2011 Question Paper",
                  //           style: TextStyle(fontSize: 20),
                  //         ),
                  //         trailing: IconButton(
                  //           onPressed: () {
                  //             Navigator.pushReplacement(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                     builder: (context) => Dd()));
                  //           },
                  //           icon: Image.asset(
                  //             "assets/Ds1.PNG",
                  //             height: 40,
                  //             width: 40,
                  //             fit: BoxFit.fill,
                  //           ),
                  //         )),
                  //     height: 50,
                  //   ),
                  // ),
                  // Card(
                  //   color: Colors.white,
                  //   child: Container(
                  //     child: ListTile(
                  //         leading: Text(
                  //           "2010 Question Paper",
                  //           style: TextStyle(fontSize: 20),
                  //         ),
                  //         trailing: IconButton(
                  //           onPressed: () {
                  //             Navigator.pushReplacement(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                     builder: (context) => Dd()));
                  //           },
                  //           icon: Image.asset(
                  //             "assets/Ds1.PNG",
                  //             height: 40,
                  //             width: 40,
                  //             fit: BoxFit.fill,
                  //           ),
                  //         )),
                  //     height: 50,
                  //   ),
                  // ),
                ],
              ),
            ]),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Background.png"),
                    fit: BoxFit.fill)),
          ),
          Positioned(
            top: 50,
            child: Container(
              child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Dd()));
            },
          ),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/menu.png"))),
            ),
          ),
          Positioned(
            top: 30,
            left: 35,
            child: Container(
              height: 200,
              width: 550,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/Logo.png"))),
            ),
          )
        ],
      ),
    );
  }
}
