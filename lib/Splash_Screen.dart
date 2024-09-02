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
    final size = MediaQuery.of(context).size;
    final isPortrait = size.height > size.width;
    final iconSize = isPortrait ? size.height * 0.15 : size.height * 0.3;
    final avatarSize = isPortrait ? size.height * 0.1 : size.height * 0.2;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: CircleAvatar(
          backgroundColor: Color.fromARGB(255, 46, 146, 101),
          child: Image.asset(
            'assets/education.png',
            color: Colors.white,
            height: iconSize,
          ),
          maxRadius: avatarSize,
        ),
      ),
    );
  }
}
