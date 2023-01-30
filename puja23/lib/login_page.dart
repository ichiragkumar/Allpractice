import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("hello world"),),

        drawer: Drawer(
          backgroundColor: Colors.red
        ),


        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print("hello world");
          },
          child: Icon(Icons.home),
        ),

        // ṃake an body of chat app xcreen
        
        body: Column(

          children: [

            Text('Let\'s Sign You In!',
            style: TextStyle(
              fontSize: 38,
              color: Colors.brown,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5
            ),
            ),


            Text('Welcome Back! \n You\' ve been missed !',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5
            ),
            ),



            Image.network("https://cdn.dribbble.com/users/32512/screenshots/14655524/media/79b2c1413c3e64b98dbddeb9617eda94.png?compress=1&resize=400x300", height: 200, width: 300,),


            Container(
              height: 100,
              width: 100,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),


              // decorate your container
              decoration: BoxDecoration(


                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage("https://cdn.dribbble.com/users/32512/screenshots/14655524/media/79b2c1413c3e64b98dbddeb9617eda94.png?compress=1&resize=400x300")),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
              )

            )
          ],


        )
          

          
      );
  }
}