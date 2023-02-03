import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {



    final Shader headerGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 1, 242, 255),
     Color.fromARGB(244, 43, 34, 23),
     ]
  ).createShader(
    Rect.fromLTWH(0, 0, 200.0, 70.0)
  );


  final Shader highlightrGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 122, 8, 94),
     Color.fromARGB(244, 20, 251, 8),
     ]
  ).createShader(
    Rect.fromLTWH(0, 0, 200.0, 70.0)
  );


  final Shader overAllGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 1, 242, 255),
    Color(0xffDE4839),
    Color(0xff2827CC),
    Color(0xff3DBE29),
    Color(0xffEDBF69),
    Color(0xffE03B8B),

     
     ]
  ).createShader(
    Rect.fromLTWH(0, 0, 200.0, 70.0)
  );


    return Container();
  }
}