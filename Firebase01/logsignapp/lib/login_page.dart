import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    double W = MediaQuery.of(context).size.width;
    double H = MediaQuery.of(context).size.height;
    return Scaffold(


      backgroundColor: Colors.white
      ,

     



      body: Column(
        children: [


            Container(

              width: W,
              height: H*0.3,
              decoration: BoxDecoration(

                image: DecorationImage(
                  image: AssetImage(
                    "assets/img/loginimg.png"
                  ),
                  fit: BoxFit.cover
                  )
                  

              ),



            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              width: W,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Hello", 
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold),),



                  Text("Sign In To Your Account", 
                     style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Colors.grey[500]),),


                  SizedBox(height: 50,),

                  Container(
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      

                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1,1),

                          color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                     ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username or Email",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        )
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Container(
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      

                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1,1),

                          color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                     ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        )
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Expanded(child: Container(

                        child: Text("Forgot Password", 
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold),),


                      ))

                    ],
                  ),


                 




                  
        ]
        
        ),
            )
            
            ,
            SizedBox(height: 20,),

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
              child:  Center(
                
                child: Text("Sign In", 
                
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.bold),),
              )
              ,



            ),

            SizedBox(height: W*0.08,),

            RichText(text: TextSpan(

              text: "Don'n\t Have an Account?",
              style: TextStyle(

                color:Colors.grey[500],
                fontSize: 20
              ),

              children: [

                TextSpan(

              text: " Crete Account",
              style: TextStyle(

                color:Colors.blue[500],
                fontSize: 25
              ),
                )





              ]
            ))
            ])
    );
  }
}