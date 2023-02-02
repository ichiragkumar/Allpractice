import 'package:flutter/material.dart';



class MyBaseAnimation extends StatefulWidget {
  const MyBaseAnimation({super.key});

  @override
  State<MyBaseAnimation> createState() => _MyBaseAnimationState();
}

class _MyBaseAnimationState extends State<MyBaseAnimation> with SingleTickerProviderStateMixin{


  // creating objects for animation class
   late Animation animation;
   late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(

        seconds: 3
      ));


      animation = Tween(
        begin: 0.0,
        end: 1.0
      ).animate(CurvedAnimation(parent: animationController, curve: Curves.linear));



animationController.forward();
      // to start the animation 

    print("my app has been started");
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return AnimatedBuilder(animation: animation, builder: (Builder, child){
      print(animation.value);

      return Scaffold(
        body: Center(

          child: Card(

            child: Container(
              width: w*animation.value,
              height: h*animation.value,
              color: Colors.yellow,

              child: Icon(Icons.face,
               
               size: animation.value*120.0,),



            )
          )
          
          )
        );
      
    });
  }
}