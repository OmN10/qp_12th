import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qp_12th/view/dd.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Dd()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Image.asset(
      height: 100,
      "assets/logo5.png",
    )));
  }
}
