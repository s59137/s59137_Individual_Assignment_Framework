import 'package:flutter/material.dart';

/*
Name : Gabriel Loke Zhu Feng
Matric Number: S59137
Description of Task :
Develop fluttter-based project based on the following user interface design
*/
void main() {
  //void main to Run MyApp
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //StatelessWidget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Widget for building the app
    return MaterialApp(
      title: 'My Profile',
      //Title of the app
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true, //center the text of the appBar
          title: const Text('My Profile'),
        ),
        body: Column(children: [
          //wrapped the circle Avatar with padding to give space for each widget not sticking to each other and the appBar
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: const CircleAvatar(
              //CircleAvatar used to put profile picture with curved/circle side
              backgroundImage: AssetImage('assets/images/gab.jpg'),
              radius: 80,
            ),
          ),
          buildProfile(),
          //buildProfile widget called here
        ]),
      ),
    );
  }
}

Widget buildProfile() => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      //crossAxisAlignment.start to align everything to the left
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            //padding used for tidyness
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //align text to left
              children: [
                //children of texts
                const Text("Name:\n"),
                const Text("Date of Birth:\n"),
                const Text("Address:\n\n"),
                const Text("Email:\n"),
                const Text("Phone # :"),
              ],
            ),
          ),
        ),
        Expanded(
          //Expanded is wrapped around this widget to prevent the overflow of text
          //The Address Text is too long to fit the whole screen
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Gabriel Loke Zhu Feng\n"),
                const Text("5/4/2000\n"),
                const Text(
                    "NO 30, Jalan Putra 2/26, Bandar IOI, 85000 Segamat, Johor\n"),
                const Text("s59137@ocean.umt.edu.my\n"),
                const Text("+6011-10751303"),
              ],
            ),
          ),
        )
      ],
    );
