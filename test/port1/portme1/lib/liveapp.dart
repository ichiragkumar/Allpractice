import 'package:flutter/material.dart';
import 'package:portme1/drawerAll.dart';




class LiveAppsHere extends StatefulWidget {
  const LiveAppsHere({super.key});

  @override
  State<LiveAppsHere> createState() => _LiveAppsHereState();
}

class _LiveAppsHereState extends State<LiveAppsHere> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 37, 16, 44),
        

        appBar:   AppBar(
        shadowColor: Colors.grey,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Color.fromARGB(255, 37, 16, 44),

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home))
        ],
        ),


      drawer: AllDrawer(),


      body: ListView(
        

        children: [

          Container(
              
              margin: EdgeInsets.all(30),
              // color: Color.fromARGB(31, 178, 173, 173),

              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),

              ),
              child: ExpansionTile(
                  trailing: Icon(Icons.next_plan,color: Color.fromARGB(255, 37, 16, 44),),
                
                  title: Text(
                    "Internet Speed Messures",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),


                  children: <Widget>[
                    ListTile(
                      title: Text(
                        "downloads 1K+",
                        style: TextStyle(fontWeight: FontWeight.w700),

                      ),
                      
                    ),


                  ],
                ),
            ),






            // container 2
            Container(
              
              margin: EdgeInsets.all(30),
              // color: Color.fromARGB(31, 178, 173, 173),

              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),

              ),
              child: ExpansionTile(
                  trailing: Icon(Icons.next_plan,color: Color.fromARGB(255, 37, 16, 44),),
                
                  title: Text(
                    "BasketBall Team - NBA",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),


                  children: <Widget>[
                    ListTile(
                      title: Text(
                        "API -used",
                        style: TextStyle(fontWeight: FontWeight.w700),

                      ),
                      
                    ),


                  ],
                ),
            ),




            // Container 3

            Container(
              
              margin: EdgeInsets.all(30),
              // color: Color.fromARGB(31, 178, 173, 173),

              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),

              ),
              child: ExpansionTile(
                  trailing: Icon(Icons.next_plan,color: Color.fromARGB(255, 37, 16, 44),),
                
                  title: Text(
                    "PortFolio",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),


                  children: <Widget>[
                    ListTile(
                      title: Text(
                        "Services",
                        style: TextStyle(fontWeight: FontWeight.w700),

                      ),
                      
                    ),


                  ],
                ),
            ),



            // 

            // container 3

            Container(
              
              margin: EdgeInsets.all(30),
              // color: Color.fromARGB(31, 178, 173, 173),

              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),

              ),
              child: ExpansionTile(
                  trailing: Icon(Icons.next_plan,color: Color.fromARGB(255, 37, 16, 44),),
                
                  title: Text(
                    "Music Player App",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),


                  children: <Widget>[
                    ListTile(
                      title: Text(
                        "100000+ Songs",
                        style: TextStyle(fontWeight: FontWeight.w700),

                      ),
                      
                    ),


                  ],
                ),
            ),



            // Contanier 4

            Container(
              
              margin: EdgeInsets.all(30),
              // color: Color.fromARGB(31, 178, 173, 173),

              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),

              ),
              child: ExpansionTile(
                  trailing: Icon(Icons.next_plan,color: Color.fromARGB(255, 37, 16, 44),),
                
                  title: Text(
                    "Images ..",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),


                  children: <Widget>[
                    ListTile(
                      title: Text(
                        "1M+ Images",
                        style: TextStyle(fontWeight: FontWeight.w700),

                      ),
                      
                    ),


                  ],
                ),
            ),



        ]
      )





      ));
  }
}