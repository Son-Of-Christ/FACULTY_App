import 'package:flutter/material.dart';

class Navphotopage1 extends StatefulWidget {
  const Navphotopage1({super.key});

  @override
  State<Navphotopage1> createState() => _Navphotopage1State();
}

class _Navphotopage1State extends State<Navphotopage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 260,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    size: 25,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Photo Text 1',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
