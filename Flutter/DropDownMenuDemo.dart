// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(DropDownMenuDemo());
}

class DropDownMenuDemo extends StatefulWidget {
  const DropDownMenuDemo({Key? key}) : super(key: key);

  @override
  State<DropDownMenuDemo> createState() => _DropDownMenuDemoState();
}

class _DropDownMenuDemoState extends State<DropDownMenuDemo> {
  var cities = ["Delhi", "Jhansi", "Kanpur", "Kolkata", "Mumbai"];
  var first_city = "Jhansi";

  var choices = ["Inbox", "SentItems", "JunkMails", "Sign-Out"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              actions: [
                PopupMenuButton(itemBuilder: (BuildContext context) {
                  return choices.map((String functionalities) {
                    return PopupMenuItem(child: Text(functionalities));
                  }).toList();
                })
              ],
              title: Text("DropDown Menu Demo",
                  style: TextStyle(fontStyle: FontStyle.italic))),
          body: Center(
              child: Column(
            children: [
              Text("Hey there!"),
              DropdownButton(
                  items: cities.map((String citiesName) {
                    return DropdownMenuItem(
                        child: Text(citiesName,
                            style: TextStyle(
                                color: (first_city == citiesName)
                                    ? Colors.lightGreen
                                    : Colors.black)),
                        value: citiesName);
                  }).toList(),
                  onChanged: (String? selected_city) {
                    setState(() {
                      first_city = selected_city!;
                    });
                  },
                  value: first_city)
            ],
          )),
        ));
  }
}
