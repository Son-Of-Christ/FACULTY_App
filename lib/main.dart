import 'package:flutter/material.dart';
import 'Splash_Screen.dart';
import 'MiddleSplash.dart';
import 'Navphotopage1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/MiddleSplash': (context) => MiddleSplash(),
        '/home': (context) => Home(),
        '/Navphotopage1': (context) => Navphotopage1(),
      },
    ));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Icon(
                Icons.school_sharp,
                size: screenHeight / 17,
                color: Color.fromARGB(255, 229, 226, 226),
              ),
              SizedBox(
                width: screenWidth * 0.02,
              ),
              Text(
                'FACULTY',
                style: TextStyle(
                  fontSize: screenHeight * 0.029,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 229, 226, 226),
                ),
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.notifications_none_outlined,
                  size: screenHeight * 0.04,
                  color: Color.fromARGB(255, 229, 226, 226),
                ),
                onPressed: () {
                  print('You have Clicked The Button');
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: screenHeight * 0.04,
                  color: Color.fromARGB(255, 229, 226, 226),
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
              screenWidth * 0.01, screenHeight * 0.01, 0, 0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: screenHeight * 0.03,
              ),
              SizedBox(
                height: isLandscape
                    ? screenHeight / 2
                    : screenHeight /
                        5, // PageView takes one-fourth of the screen height
                child: PageView(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/Navphotopage1');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            14.0), // Change the border radius here
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              margin:
                                  EdgeInsets.only(right: screenWidth * 0.03),
                              child: Image.asset(
                                'assets/first.jpg',
                                fit: BoxFit.fill,
                                height: constraints.maxHeight,
                                width: constraints.maxWidth,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/Navphotopage2');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            14.0), // Change the border radius here
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              margin:
                                  EdgeInsets.only(right: screenWidth * 0.03),
                              color: Colors.blue,
                              child: Image.asset(
                                'assets/second.jpg',
                                fit: BoxFit.fill,
                                height: constraints.maxHeight,
                                width: constraints.maxWidth,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/Navphotopage3');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            14.0), // Change the border radius here
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              margin:
                                  EdgeInsets.only(right: screenWidth * 0.03),
                              color: Colors.pink,
                              child: Image.asset(
                                'assets/Third.jpg',
                                fit: BoxFit.fill,
                                height: constraints.maxHeight,
                                width: constraints.maxWidth,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/Navphotopage4');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            14.0), // Change the border radius here
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              margin:
                                  EdgeInsets.only(right: screenWidth * 0.03),
                              color: Colors.green,
                              child: Image.asset(
                                'assets/fourth.png',
                                fit: BoxFit.fill,
                                height: constraints.maxHeight,
                                width: constraints.maxWidth,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                  onPageChanged: (index) {
                    // You can handle page change here if needed
                  },
                ),
              ),
              SizedBox(
                  height: screenHeight *
                      0.025), // Space between PageView and indicator
              SmoothPageIndicator(
                controller: _pageController,
                count: 4, // Number of pages
                effect: CustomizableEffect(
                    activeDotDecoration: DotDecoration(
                      width: screenWidth * 0.05,
                      height: screenHeight * 0.01,
                      color: Color.fromARGB(255, 46, 146, 101),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    dotDecoration: DotDecoration(
                      width: screenWidth * 0.02,
                      height: screenHeight * 0.01,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
