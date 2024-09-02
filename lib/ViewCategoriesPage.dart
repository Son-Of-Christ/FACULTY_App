import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewCategoriesPage extends StatefulWidget {
  const ViewCategoriesPage({super.key});

  @override
  State<ViewCategoriesPage> createState() => _ViewCategoriesPageState();
}

class _ViewCategoriesPageState extends State<ViewCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.02),
              child: Text(
                'Course Category',
                style: TextStyle(
                  color: Colors.white,
                  fontSize:
                      isLandscape ? screenHeight * 0.055 : screenHeight * 0.03,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
