import 'dart:async';

import 'package:flutter/material.dart';

class MiddleSplash extends StatefulWidget {
  const MiddleSplash({super.key});

  @override
  State<MiddleSplash> createState() => _MiddleSplashState();
}

class _MiddleSplashState extends State<MiddleSplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isPortrait = size.height > size.width;
    final textSize = isPortrait ? size.height * 0.04 : size.height * 0.1;
    final imageSize = isPortrait ? size.height * 0.09 : size.height * 0.2;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 146, 101),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/education.png',
              height: imageSize,
              color: Colors.white,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'FACULTY',
              style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  letterSpacing: 3.0),
            )
          ],
        ),
      ),
    );
  }
}
