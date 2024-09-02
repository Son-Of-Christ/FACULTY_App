import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Splash_Screen.dart';
import 'MiddleSplash.dart';
import 'Navphotopage1.dart';
import 'ViewCategoriesPage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/MiddleSplash': (context) => MiddleSplash(),
        '/home': (context) => Home(),
        '/Navphotopage1': (context) => Navphotopage1(),
        '/ViewCategoriesPage': (context) => ViewCategoriesPage(),
      },
    ));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();
  final List<Map<String, String>> pages = [
    {'image': 'assets/first.jpg', 'route': '/Navphotopage1'},
    {'image': 'assets/second.jpg', 'route': '/Navphotopage2'},
    {'image': 'assets/ Third.jpg', 'route': '/Navphotopage3'},
    {'image': 'assets/fourth.png', 'route': '/Navphotopage4'},
  ];

  @override
  Widget build(BuildContext context) {
    //getting size of the screen or dimension
    final size = MediaQuery.of(context).size;
//get the screen orientation,portrait or landscape
    final isPortrait = size.height > size.width;
//calculate dynamic sizes
    final double appbarHeight =
        isPortrait ? size.height * 0.075 : size.height * 0.13;
    final double textSize =
        isPortrait ? size.height * 0.03 : size.height * 0.06;
    final double iconSize =
        isPortrait ? size.height * 0.07 : size.height * 0.15;
    final double imageSize =
        isPortrait ? size.height * 0.033 : size.height * 0.07;
    final double pageHeight = isPortrait ? size.height / 5 : size.height / 2;
    final double dotSize =
        isPortrait ? size.height * 0.01 : size.height * 0.022;
    final double actdotSize =
        isPortrait ? size.width * 0.05 : size.width * 0.05;
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          titleSpacing: isPortrait ? 10 : 5,
          backgroundColor: Colors.black,
          foregroundColor: Colors.black,
          title: Row(
            children: [
              Image.asset(
                'assets/education.png',
                color: Colors.white,
                height: iconSize,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'FACULTY',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2,
                  fontSize: textSize,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/bell.png',
                  height: imageSize,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 11),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/search.png',
                  height: imageSize,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          toolbarHeight: appbarHeight,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                  height: pageHeight,
                  child: PageView.builder(
                      controller: _pageController,
                      itemCount: pages.length,
                      itemBuilder: (context, index) {
                        final page = pages[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, page['route']!);
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(page['image']!),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              )),
                        );
                      })),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: pages.length,
                  effect: CustomizableEffect(
                      activeDotDecoration: DotDecoration(
                        width: actdotSize,
                        height: dotSize,
                        color: Color.fromARGB(255, 46, 146, 101),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      dotDecoration: DotDecoration(
                        width: dotSize,
                        height: dotSize,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      )),
                ),
              ),
              Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
