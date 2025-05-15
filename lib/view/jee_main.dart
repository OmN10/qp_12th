import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qp_12th/controller/jeemains.controller.dart';
import 'package:qp_12th/view/dd.dart';
import 'package:qp_12th/view/viewPdf.dart';

class JeeMain extends StatefulWidget {
  const JeeMain({super.key});

  @override
  State<JeeMain> createState() => _JeeMainState();
}

class _JeeMainState extends State<JeeMain> {
  @override
  void initState() {
    context.read<Jeemainscontrolle>().getData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height / 1,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Layout.png"), fit: BoxFit.fill)),
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "JEE MAIN",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        height: 10,
                        color: Color(0xFFF6AC43)),
                  ),
                ),
              ),
              context.watch<Jeemainscontrolle>().ofData == null
                  ? CircularProgressIndicator()
                  : Column(
                      children: [
                        for (var i
                            in context.watch<Jeemainscontrolle>().ofData!) ...[
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
                                                  ShowPdf(i.file!, i.year!)));
                                    },
                                    icon: Image.asset(
                                      "assets/Objects.PNG",
                                      height: 35,
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
                image: AssetImage("assets/image.png"), fit: BoxFit.fill)),
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
    ]));
  }
}
