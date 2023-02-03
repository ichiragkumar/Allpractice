import 'package:flutter/material.dart';
import 'package:myportfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});





  @override
  Widget build(BuildContext context) {


    var nameWidget = "Chirag\n Kumar"
                  .text
                  .white
                  .xl6
                  .lineHeight(1)
                  .size(context.isMobile?15 : 20)
                  .bold
                  .make().shimmer();



    return SafeArea(child: 
    VxBox(
      child: VStack([
        ZStack([
          PictureWidget(),
          Row(
            children: [
              VStack(
                [
                  CustomAppBar().shimmer(
                    primaryColor: Coolers.accentColor,

                  ),
                  30.heightBox,
                  nameWidget,
                  20.heightBox,
                  VxBox()
                    .color(Coolers.accentColor)
                    .size(60, 10)
                    .make()
                    .shimmer(primaryColor: Coolers.accentColor),


                  30.heightBox,
                  SocialAccounts(),









                ]
              )
            ],
          )


        ])
      ])
    ).make()
    );
  }
}


class PictureWidget extends StatelessWidget {
  const PictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        
        child: Image.asset("lib/assets/CHIRAG.png", 
        fit: BoxFit.cover,
        height: context.percentHeight* 60,
        ),

    );
  }
}


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.edit,
      size: 50,
      color: Coolers.accentColor,

    );
  }
}





class SocialAccounts extends StatelessWidget {
  const SocialAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return[
      Icon(Icons.facebook,
      color: Colors.white,


      ).mdClick(()
      { 
        launch("https://facebook.com/");
      }
      )
      .make(),

     20.widthBox,

     Icon(Icons.home,
      color: Colors.pink,
      ).mdClick(()
      { 
        launch("https://facebook.com/");
      }
      )
      .make(),


      20.widthBox,

     Icon(Icons.add,
      color: Colors.red,
      ).mdClick(()
      { 
        launch("https://facebook.com/");
      }
      )
      .make(),



      20.widthBox,

     Icon(Icons.baby_changing_station,
      color: Colors.pink,
      ).mdClick(()
      { 
        launch("https://facebook.com/");
      }
      )
      .make()
    ].hStack() ;
  }
}