import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CrossFadeAnimation extends StatefulWidget {
  const CrossFadeAnimation({super.key});

  @override
  State<CrossFadeAnimation> createState() => _CrossFadeAnimationState();
}

class _CrossFadeAnimationState extends State<CrossFadeAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(

        child: AnimatedCrossFade(
          duration: ,
          crossFadeState: CrossFadeState.showFirst,
          firstChild: FlutterLogo(
          style: FlutterLogoStyle.stacked,
          size: 100.0,
          ),

          secondChild: FlutterLogo(
            style: FlutterLogoStyle.markOnly,
            size: 200.0
          ),


        )
      )
    );
  }
}