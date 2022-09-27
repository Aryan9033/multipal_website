import 'package:flutter/material.dart';
import 'package:mix_website/Home_page/Home_page.dart';
import 'package:mix_website/Home_page/javapoint.dart';
import 'package:mix_website/Home_page/tutorialspoint.dart';
import 'package:mix_website/Home_page/w3schools.dart';
import 'package:mix_website/Home_page/wikipedia.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        "Home_Page": (context) => Home_Page(),
        "wikipedia": (context) => wikipedia(),
        "w3schools": (context) => w3schools(),
        "javapoint": (context) => javapoint(),
        "tutorialpoint": (context) => tutorialpoint(),
      },
      home: Home_Page(),
    ),
  );
}
