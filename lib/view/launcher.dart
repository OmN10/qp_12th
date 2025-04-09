import 'package:flutter/material.dart';
import 'package:qp_12th/view/dashboard.dart';

class Launcher extends StatelessWidget {
  const Launcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Container(
          height: 870,
          decoration: BoxDecoration(color: Color.fromARGB(255, 215, 218, 224)),
        ),
        Positioned(
            top: 150,
            left: 100,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    Text(
                      "12TH QP APP",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/kkkkk.png"),
                              fit: BoxFit.fitHeight)),
                      height: 250,
                      width: 200,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 135, 39, 144)),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard()));
                        },
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ))
                  ],
                ),
              ),
            )),
      ]),
    ));
  }
}
