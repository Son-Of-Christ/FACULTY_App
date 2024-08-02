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
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 146, 101),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.school,
              color: Colors.white,
              size: 50.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'FACULTY',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  letterSpacing: 3.0),
            )
          ],
        ),
      ),
    );
  }
}
