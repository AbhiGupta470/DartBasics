// ignore_for_file: prefer_const_constructors, unused_field, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';

import 'Contact.dart';

class LateralCrunchesBellyFatWannaTry extends StatefulWidget {
  const LateralCrunchesBellyFatWannaTry({Key? key}) : super(key: key);

  @override
  State<LateralCrunchesBellyFatWannaTry> createState() =>
      _LateralCrunchesBellyFatWannaTry();
}

class _LateralCrunchesBellyFatWannaTry
    extends State<LateralCrunchesBellyFatWannaTry>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: Duration(seconds: 10), vsync: this)
        ..repeat();
  bool _isVisible = true;
  //double num  = ;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        home: Scaffold(
            body: SizedBox(
              width: double.infinity,
              child: Center(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  AnimatedBuilder(
                    animation: _controller,
                    child: Image(
                        height: 200,
                        image: AssetImage('images/FlutterMapp-.png')),
                    builder: (BuildContext context, Widget? child) {
                      return Transform.rotate(
                        angle: _controller.value * 50.0 * pi / 12.0,
                        child: child,
                      );
                    },
                  ),
                  Visibility(
                    visible: _isVisible,
                    child: Container(
                        height: 230,
                        width: 350,
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.all(40),
                        color: Colors.orange,
                        child: ListView(
                          children: [
                            Column(children: [
                              Text(
                                """Step-1: Your knees must be bent and stacked together. For instance, your left knee must be on the floor and your right one must be stacked on top.Place your right hand at the back of your head. Position your left hand on the floor. This helps stabilise your body.

Step-2: Keep your chin tucked in throughout the movement. Your ribs and pelvis must be slightly tucked in. Now, keeping your lower body still, start the upward movement by activating and squeezing your right oblique. 

Step-3: Curl your shoulders off the floor band perform a side bend gently. Your elbow must move towards your right hip.

Step-4: Pause at the top of the movement for 2-3 seconds.

Step-5: Gently lower to the starting position while maintaining tension in your obliques.""",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              )
                            ])
                          ],
                        )),
                  ),
                  AnimatedBuilder(
                    animation: _controller,
                    child: Image(
                        height: 200,
                        image: AssetImage('images/FlutterMapp-.png')),
                    builder: (BuildContext context, Widget? child) {
                      return Transform.rotate(
                        angle: _controller.value * 50.0 * pi / 12.0,
                        child: child,
                      );
                    },
                  ),
                ]),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.red[100],
              foregroundColor: Colors.black,
              splashColor: Colors.blueGrey,
              tooltip: 'See Above!',
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
              child: Icon(Icons.play_arrow_sharp),
            ),
            bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Contact()));
                        },
                        icon: Icon(
                          Icons.home,
                          color: Colors.black54,
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Contact()));
                        },
                        icon: Icon(
                          Icons.info,
                          color: Colors.black54,
                        )),
                  ]),
            )));
  }
}
