import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(


      appBar: AppBar(title: Text("yyy"),

      bottom: TabBar(
        tabs: [
            Icon(Icons.home),
            Icon(Icons.add_a_photo),
            Icon(Icons.feed),
            Icon(Icons.subscript),


        ]
      )
        ,
      
      ),


      body: TabBarView(children: [


        Container(

          child: Icon(Icons.flight),
        ),

        Container(

          child: Icon(Icons.bike_scooter_rounded),
        ),


        Container(

          child: Icon(Icons.food_bank),
        ),

        Container(

          child: Icon(Icons.edit),
        )
      ]),

      
    ));



    // return TabBarView(
    //   children: <Widget>[
    //     Icon(Icons.flight, size: 350),
    //     Icon(Icons.directions_transit, size: 350),
    //     Icon(Icons.directions_car, size: 350),
    //     Icon(Icons.directions_bike, size: 350),
    //     Icon(Icons.directions_boat, size: 350),
    //   ],
    // );

  }
}