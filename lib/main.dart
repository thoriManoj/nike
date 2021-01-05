import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike/screen/product_screen.dart';
import 'package:nike/widgets/appbar.dart';
import 'package:nike/widgets/shoe_details.dart';
import 'dart:math' as math;

import 'model/nikeShoe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Oswald',
        highlightColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 0;
  var _bottomBarPostion = 0.3;
  PageController _controller;
  double _extent = 0.0;
  int _result;

  //ScrollController _scrollController;

  void _updateResult(int result) {
    setState(() {
      _currentIndex = result;
      _controller.animateToPage(
        _currentIndex,
        curve: Curves.ease,
        duration: Duration(milliseconds: 300),
      );
      _bottomBarPostion = 0.5;
    });
  }

  void _productScreen(BuildContext context) async {
    _result = await Navigator.push(
      context,
      PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 800),
          transitionsBuilder: (context, animation, animationTime, child) {
            animation = CurvedAnimation(parent: animation, curve: Curves.ease);
            return FadeTransition(
              opacity: animation,
              // alignment: Alignment.center,
              // scale: animation,
              child: child,
            );
          },
          pageBuilder: (context, animation, animationTime) {
            return ProductScreen();
          }),
      // MaterialPageRoute(
      //   builder: (context) => ProductScreen(),
      // ),
    );
    _updateResult(_result);
  }

  @override
  void initState() {
    super.initState();
    //_scrollController = ScrollController();
    _controller = PageController();

    // _scrollController.addListener(() {
    //   print(_scrollController.offset);
    // });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFEAEAEA),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height * 0.08),
          child: NikeAppBar()),
      body: Container(
        //color: Colors.blue,
        width: size.width,
        height: size.height,
        child: Stack(
          //alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 10,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          'NIKE',
                          style: TextStyle(
                            fontSize: size.height * 0.2,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFBCC2C8),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 22),
                        child: FlatButton.icon(
                          onPressed: () {
                            _productScreen(context);
                          },
                          icon: Icon(
                            Icons.apps_rounded,
                            size: 35,
                          ),
                          label: Text(
                            'View All Products'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 0.9,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Container(
                width: double.infinity,
                height: size.height * 0.3,
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemCount: shoesList.length,
                  itemBuilder: (context, index) {
                    return Transform.scale(
                      scale: _extent == 0.0 ? 1 : 1.3 - _extent,
                      child: Transform.rotate(
                          angle: math.pi / -15,
                          child: Container(
                            child: Image.asset(
                              shoesList[index].imageUrl,
                              //fit: BoxFit.cover,
                            ),
                          )),
                    );
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: NotificationListener<DraggableScrollableNotification>(
                onNotification: (notification) {
                  //print(notification.extent);
                  setState(() {
                    _extent = notification.extent;
                  });
                  return;
                },
                child: DraggableScrollableSheet(
                  //expand: false,
                  initialChildSize: _bottomBarPostion,
                  minChildSize: _bottomBarPostion,
                  //maxChildSize: 0.8,
                  builder: (context, controller) {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.only(
                        //   topLeft: Radius.circular(20),
                        //   topRight: Radius.circular(20),
                        // ),
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        controller: controller,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RotatedBox(
                                  quarterTurns: 1,
                                  child: SvgPicture.asset(
                                    'assets/images/pause.svg',
                                    height: 30,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Divider(
                              height: 2,
                              thickness: 2.5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                                top: 8,
                              ),
                              child: Text(
                                'Running'.toUpperCase(),
                                style: TextStyle(
                                  letterSpacing: 5,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        shoesList[_currentIndex].title,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 22,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(50),
                                            ),
                                          ),
                                          child: IconButton(
                                            icon: Icon(Icons.add),
                                            onPressed: () {},
                                            iconSize: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Countup(
                                        prefix: '\$ ',
                                        begin: _currentIndex > 0
                                            ? shoesList[_currentIndex - 1].price
                                            : shoesList[_currentIndex].price,
                                        end: shoesList[_currentIndex].price,
                                        duration: Duration(milliseconds: 370),
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                        // child: Text(
                                        //   "\$${shoesList[_currentIndex].price}",
                                        //   style: TextStyle(
                                        //       fontWeight: FontWeight.w600,
                                        //       fontSize: 18),
                                        // ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 15.0, bottom: 10),
                                        child: IconButton(
                                          icon: SvgPicture.asset(
                                            'assets/images/heart_plus.svg',
                                            height: 25,
                                          ),
                                          onPressed: () {},
                                          iconSize: 30,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ShoeDetails(),
                                  // Expanded(
                                  //   child: Container(
                                  //     height: 100,
                                  //     width: double.infinity,
                                  //     child: ShoeDetails(),
                                  //   ),
                                  // ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    shoesList[_currentIndex].description,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
            // Positioned(
            //   bottom: 0,
            //   right: 20,
            //   left: 0,
            // ),
            //
          ],
          overflow: Overflow.visible,
        ),
      ),
    );
  }
}
