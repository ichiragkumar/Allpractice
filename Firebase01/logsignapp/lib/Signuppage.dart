import 'package:flutter/material.dart';
import 'package:logsignapp/auth_controller.dart';



class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {

    var emailController  = TextEditingController();
    var passwordController =  TextEditingController();

    List images = [
      "g.png",
      "t.png",
      "f.png"

    ];

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
              margin: EdgeInsets.only(left: 20, right: 20),
              width: W,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Center(
                    child: Text("Welcome !", 
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold),),
                  ),



                  Text("Create Your Account", 
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
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Username or Email",
                        prefixIcon: Icon(Icons.email, color: Colors.deepOrangeAccent,),
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
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.password, color: Colors.orangeAccent,),
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

            GestureDetector(
              onTap: (){
                AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
              },
              child: Container(
            
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
                  
                  child: Text("Sign Up", 
                  
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold),),
                )
                ,
            
            
            
              ),
            ),

            SizedBox(height: W*0.2,),

            RichText(text: TextSpan(

              text: "Sign Up With...",
              style: TextStyle(

                color:Colors.black87,
                fontSize: 20
              ),

            
              
            )),

            Wrap(

              children:List<Widget>.generate(3, (index) => Padding(
                padding: EdgeInsets.all(10),
                child: CircleAvatar(
                  radius:35,
                  backgroundColor: Colors.grey[500],
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/img/" + images[index]),
                
                
                  ),
                ),
              ))

              

            )
        



            
            
            ])


            


    );
  }
}