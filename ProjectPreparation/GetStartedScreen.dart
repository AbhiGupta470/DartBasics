// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            //colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green),
            //primarySwatch: Colors.green,
            scaffoldBackgroundColor: Color.fromARGB(255, 38, 37, 37)),
        home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text("BFiT",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      fontStyle: FontStyle.italic))),
          body:
              //Image(image: AssetImage('images/Gym.jpg'))
              Stack(children: [
            Image.asset('images/Gym.png'),
            Container(
                child: Text("Start Your Journey Now!",
                    style: TextStyle(
                      color: Colors.green,
                      fontStyle: FontStyle.italic,
                      fontSize: 32,
                    )))
          ]),
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          floatingActionButton: SizedBox(
            height: 80.0,
            width: 80.0,
            child: FloatingActionButton(
                backgroundColor: Colors.green,
                foregroundColor: Colors.black,
                splashColor: Colors.white,
                elevation: 23,
                tooltip: 'Get Started',
                onPressed: () {},
                child: Icon(Icons.arrow_forward_sharp)),
          ),
        ));
  }
}
