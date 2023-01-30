import 'package:flutter/material.dart';
import 'package:myportfolio/colors.dart';
import 'package:velocity_x/velocity_x.dart';

import 'header.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(


          color: Coolers.primaryColor,
          child: VStack([
            HeaderScreen(), 

          ]).scrollVertical(),

    );
  }
}