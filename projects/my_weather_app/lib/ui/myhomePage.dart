import 'package:flutter/material.dart';
import 'package:my_weather_app/ui/Weather.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,

      appBar: AppBar(title: Text("Wheather App")),

      body: Weather(),
    );
  }
}