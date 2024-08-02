import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/MiddleSplash');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: CircleAvatar(
          backgroundColor: Color.fromARGB(255, 46, 146, 101),
          child: Icon(
            Icons.school,
            color: Colors.white,
            size: 120.0,
          ),
          maxRadius: 90.0,
        ),
      ),
    );
  }
}
