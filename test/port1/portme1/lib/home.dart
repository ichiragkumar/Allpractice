import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
     Scaffold(

      appBar: AppBar(backgroundColor: Colors.red),

      drawer: Drawer(backgroundColor: Colors.white),


      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        

        

        children: [

          Container(
            height: 300,
            width:300,
            margin: EdgeInsets.all(68),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              
            ),

          


            child:Container(
              margin: EdgeInsets.all(30),
              // color: Color.fromARGB(31, 178, 173, 173),

              decoration: BoxDecoration(
                color: Color.fromARGB(31, 73, 70, 70),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),

              ),
              child: ExpansionTile(
                // trailing: Icon(Icons.expand_sharp),
                
                  title: Text(
                    "I\n'm Chirag",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),


                  children: <Widget>[
                    ListTile(
                      title: Text(
                        "My Stats",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
            ),
          
        

        
      )
        ]
      )


    ));
  }
}