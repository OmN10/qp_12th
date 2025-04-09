import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qp_12th/controller/jeeadvanced.controller.dart';
import 'package:qp_12th/view/dd.dart';
import 'package:qp_12th/view/viewPdf.dart';

class JeeAdvanced extends StatefulWidget {
  const JeeAdvanced({super.key});

  @override
  State<JeeAdvanced> createState() => _JeeAdvancedState();
}

class _JeeAdvancedState extends State<JeeAdvanced> {
  @override
  void initState() {
    context.read<Jeeadvancedcontroller>().getData();
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
                      image: AssetImage("assets/jeead_layout.png"),
                      fit: BoxFit.fill)),
              child: ListView(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "JEE ADVANCED",
                          style: TextStyle(
                              fontSize: 35,
                              height: 12,
                              color: Color(0xFF822126),
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),

                    context.watch<Jeeadvancedcontroller>().ofData == null
                        ? CircularProgressIndicator()
                        : Column(
                            children: [
                              for (var i in context
                                  .watch<Jeeadvancedcontroller>()
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
                                                    builder: (context) =>
                                                        ShowPdf(
                                                            i.file!, i.year!)));
                                          },
                                          icon: Image.asset(
                                            "assets/Ds.PNG",
                                            height: 40,
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
                    //             "assets/Ds.PNG",
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
                    //             "assets/Ds.PNG",
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
                    //             "assets/Ds.PNG",
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
                    //             "assets/Ds.PNG",
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
                    //             "assets/Ds.PNG",
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
                    //             "assets/Ds.PNG",
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
                    //             "assets/Ds.PNG",
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
                    //             "assets/Ds.PNG",
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
              ])),
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/jee_advanced.png"),
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
