import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portme1/drawerAll.dart';


class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 145, 92, 185),


        appBar: AppBar(
          title: Center(child: Text("Projects")),
          elevation: 0,
          backgroundColor: Colors.transparent
        ),

        drawer: AllDrawer(),

        body: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          

          children: [


           
               Column(
                mainAxisAlignment: MainAxisAlignment.start,

                 children: [

                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: 
                    [
                      Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 220,
                      color: Color.fromARGB(255, 5, 203, 84),
                      
        
        
          ),

           Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 220,
                      color: Color.fromARGB(255, 177, 216, 19),
                      
        
        
          ),

          
           Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 220,
              color: Color.fromARGB(255, 37, 16, 44),
              
            ),

                    ],
              ),

            

            // ro2
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: 120,

                    color: Colors.black,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
              height: 50,
              width: 150,
                    color: Color.fromARGB(255, 188, 171, 171),
                  )
                  
                  
                  
                ],

              )

          ],
               ),


              



            



            



          ]
        ),

              


        
        

      
        




      ));
  }
}