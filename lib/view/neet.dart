import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qp_12th/controller/neet.controller.dart';
import 'package:qp_12th/view/dd.dart';
import 'package:qp_12th/view/viewPdf.dart';

class Neet extends StatefulWidget {
  const Neet({super.key});

  @override
  State<Neet> createState() => _NeetState();
}

class _NeetState extends State<Neet> {
  @override
  void initState() {
    context.read<neetContoller>().getData();
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
                    image: AssetImage("assets/neet_Layout.png"),
                    fit: BoxFit.fill)),
            child: ListView(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "NEET",
                        style: TextStyle(
                            fontSize: 42,
                            height: 10,
                            color: Color(0xFF5BB784),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  context.watch<neetContoller>().ofData == null
                      ? CircularProgressIndicator()
                      : Column(
                          children: [
                            for (var i
                                in context.watch<neetContoller>().ofData!) ...[
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
                                          "assets/Ds2.PNG",
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
                ],
              ),
            ]),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/neet_Background.png"),
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
