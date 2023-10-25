import 'dart:async';
import 'package:flutter/material.dart';

class HeadingPage extends StatefulWidget {
  const HeadingPage({Key? key});

  @override
  State<HeadingPage> createState() => _HeadingPageState();
}

class _HeadingPageState extends State<HeadingPage> {
  int _currentPage = 0;
  final PageController _pageController = PageController();
  late Timer timer;
  @override
  void initState() {
    super.initState();
    startAutoPlay();
  }
  @override
  void dispose() {

    timer.cancel();
    _pageController.dispose();
    super.dispose();
  }
  void startAutoPlay() {

    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      _currentPage = (_currentPage + 1) % 3; // Cycle through 0, 1, 2
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(
          height: 200.0,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  buildRow1(),
                  buildRow2(),
                  buildRow3(),
                ],
              ),
              Positioned(
                left: 20,
                bottom: 80,
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(3.0),bottomRight: Radius.circular(3.0)),
                  ), // White container background
                  child: IconButton(
                    icon: Icon(Icons.chevron_left,color: Colors.white,size: 40.0,),
                    onPressed: () {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                right: 30,
                bottom: 80,
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(3.0),bottomRight: Radius.circular(3.0)),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.chevron_right,color: Colors.white,size: 40.0,),
                    onPressed: () {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                height: 80.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for (int i = 0; i < 3; i++)
                      Container(
                        width: 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPage == i ? Colors.amber : Colors.grey,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }


  Widget buildRow1() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 40.0),
          height: 160.0,
          width: 670.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/backorange.jpg",
                  height: 180.0,
                  width: 670.0,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  right: 10.0,
                  top: 10.0,
                  child:
                  Image.asset("assets/images/background-removebg-preview.png",
                    height: 150.0,
                    width: 200.0,
                  ),
                ),
                Positioned(
                  top: 25.0,
                  left: 40.0,
                  child:  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Get Discount Voucher\n Up To 20%\n",
                          style: TextStyle(
                              fontFamily: 'Mitr',
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "\n\nLoern ipusm sit amet,consecteture adipiscing elit,sed do\nelusmod tempor incident",
                          style: TextStyle(
                              fontFamily: 'Cabin',
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),

                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  Widget buildRow2() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 40.0),
          height: 160.0,
          width: 670.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/purpleback.jpg",
                  height: 180.0,
                  width: 670.0,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  left: 350.0,
                  bottom: 1.0,
                  child:
                  Image.asset("assets/images/backgirl.png",
                    height: 150.0,
                    width: 300.0,
                  ),

                ),
                Positioned(
                  top: 25.0,
                  left: 200.0,
                  child:  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Get Big Discount\n on Double Burger\n",
                          style: TextStyle(
                              fontFamily: 'Mitr',
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                  ),
                ),
                Positioned(
                  left: 30.0,
                  top: 0.0,
                  child:
                  Image.asset("assets/images/burger2.png.crdownload.png",
                    height: 150.0,
                    width: 150.0,
                  ),

                ),

              ],
            ),
          ),

        ),

      ],
    );
  }
  Widget buildRow3() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 40.0),
          height: 160.0,
          width: 670.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/blackback.jpg",
                  height: 180.0,
                  width: 670.0,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  left: 400.0,
                  bottom: 1.0,
                  child:
                  Image.asset("assets/images/girlback2.png",
                    height: 140.0,
                    width: 300.0,
                  ),

                ),
                Positioned(
                  top: 25.0,
                  left: 200.0,
                  child:  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Get Big Discount\n on Double Burger\n",
                          style: TextStyle(
                              fontFamily: 'Mitr',
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                  ),
                ),
                Positioned(
                  left: 30.0,
                  top: 0.0,
                  child:
                  Image.asset("assets/images/burgerfire.jpg",
                    height: 150.0,
                    width: 150.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

  }

}

