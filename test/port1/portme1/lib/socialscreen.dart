import 'package:flutter/material.dart';
import 'package:portme1/drawerAll.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// Color.fromARGB(255, 37, 16, 44),


class SocialScreen extends StatefulWidget {
  const SocialScreen({super.key});

  @override
  State<SocialScreen> createState() => _SocialScreenState();
}

class _SocialScreenState extends State<SocialScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color.fromARGB(255, 37, 16, 44),

      appBar: AppBar(
        shadowColor: Colors.grey,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Color.fromARGB(255, 37, 16, 44),

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home))
        ],
        ),

      drawer: AllDrawer(),


      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            Padding(padding:EdgeInsets.all(10)),
            

                Container(
                  height: 460,
                  width: 350,
                  decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: ExactAssetImage("assets/CHIRAG.jpg"),
                          fit: BoxFit.cover
                        ),
                        
                        
                        // boxShadow: [
                        //   BoxShadow(
                        //   color: Colors.white,
                        //   offset: const Offset(0.5, 0.2),
                        //   blurRadius: 0.7,
                        //   spreadRadius: 0.8,
                        //   ), //BoxShad

                        // ]
                            
                ),
                ),


                Divider(
                  thickness: 0.4,
                  color: Color.fromARGB(255, 247, 238, 238),
                  indent: 0.3,
                  endIndent: 0.5,
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    Container(
                      
                      height: 40,
                      width:40,
                      margin: EdgeInsets.all(10),
                      
                      child: Icon(FontAwesomeIcons.twitter),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                       
                        
                            
                      ),

                    ),

                     Container(
                      height: 40,
                      width:40,
                      margin: EdgeInsets.all(10),
                      
                      child: Icon(FontAwesomeIcons.instagram),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                            
                      ),

                    ),

                     Container(
                      height: 40,
                      width:40,
                      margin: EdgeInsets.all(10),
                      
                      child: Icon(FontAwesomeIcons.youtube),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                            
                      ),

                    ),

                     Container(
                      height: 40,
                      width:40,
                      margin: EdgeInsets.all(10),
                      
                      child: Icon(FontAwesomeIcons.linkedin),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                            
                      ),

                    )


                    
                  ],
                )
            
            
          ],

      )
    ));
  }
}