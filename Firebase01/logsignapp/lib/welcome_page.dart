import 'package:flutter/material.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {

    double W = MediaQuery.of(context).size.width;
    double H = MediaQuery.of(context).size.height;
    return Scaffold(

      body: Column(
        children: [


            Container(

              width: W,
              height: H*0.3,
              decoration: BoxDecoration(

                image: DecorationImage(
                  image: AssetImage(
                    "assets/img/signup.png"
                  ),
                  fit: BoxFit.cover
                  )
                  

              ),

              child: Column(

                children: [
                  SizedBox(height: H*0.16,),

                  CircleAvatar(
                    backgroundColor: Colors.white70,


                    radius: 60,
                    backgroundImage: AssetImage("assets/img/profile.png"),
                  )
                ],
              ),



            ),



            Container(
              child: Center(
                    child: Text("Welcome !", 
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold),),
                  ),
            ),



            SizedBox(height: 30,),


            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(left: 15),

              child: Column(

                children: [

                    Center(
                    child: Text("rohan@dev.com", 
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.amberAccent
                      ,
                      fontWeight: FontWeight.bold),),
                  ),



                   Center(
                    child: Text("Facebook Login", 
                    style: TextStyle(
                       color: Colors.amberAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),),
                  ),

                ],
              ),



            )



            ,

          SizedBox(height: 290,),



           Container(

              width: W*0.7,
              height: H*0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),

                image: DecorationImage(
                  image: AssetImage(
                    "assets/img/loginbtn.png"
                  ),
                  fit: BoxFit.cover
                  )
                  

              ),
              child:  Container(
                margin: EdgeInsets.only(left:42),
                
                 child:Row(
                  children: [


                  Center(
                  
                  child: Text("Logout", 
                  
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                          
                          ),
                ),

                SizedBox(width: 12,),


                Center(
                   child: Icon(Icons.logout),

                )


                  ],
                 ),
              )
              ,



            ),
        ]
      )

    );
  }
}