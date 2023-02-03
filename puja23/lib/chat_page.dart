import 'package:flutter/material.dart';



class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Chat Here"),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.logout)
            )
          ],
        ),

        drawer: Drawer(backgroundColor: Colors.black),


        body:  
             ListView(
                children: [
            
                  Container(
            
                    padding: EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
            
                     children: [
                        Text("i am child", style: TextStyle(fontSize: 24,color:Colors.white),),
            
                        // SizedBox(height: 10,),
            
                         Image.network("https://cdn.dribbble.com/users/32512/screenshots/14655524/media/79b2c1413c3e64b98dbddeb9617eda94.png?compress=1&resize=400x300", height: 100, width: 150,),
                      ],
                    ),
                    margin: EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      topLeft: Radius.circular(12)),
            
                    )
            
            
            
            
            
                  ),
            
            
            
                  Container(
            
                    padding: EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
            
                     children: [
                        Text("i am child", style: TextStyle(fontSize: 24,color:Colors.white),),
            
                        // SizedBox(height: 10,),
            
                         Image.network("https://cdn.dribbble.com/users/32512/screenshots/14655524/media/79b2c1413c3e64b98dbddeb9617eda94.png?compress=1&resize=400x300", height: 100, width: 150,),
                      ],
                    ),
                    margin: EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      topLeft: Radius.circular(12)),
            
                    )
            
            
            
            
            
                  ),
            
            
                  
            
            
                  Container(
            
                    padding: EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
            
                     children: [
                        Text("i am child", style: TextStyle(fontSize: 24,color:Colors.white),),
            
                        // SizedBox(height: 10,),
            
                         Image.network("https://cdn.dribbble.com/users/32512/screenshots/14655524/media/79b2c1413c3e64b98dbddeb9617eda94.png?compress=1&resize=400x300", height: 100, width: 150,),
                      ],
                    ),
                    margin: EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      topLeft: Radius.circular(12)),
            
                    ),
            
            
            
                    
            
            
            
            
            
                  ),
            
            
                  
            
            
                  
            
                  Container(
                    child: Image.network("https://cdn.dribbble.com/users/32512/screenshots/14655524/media/79b2c1413c3e64b98dbddeb9617eda94.png?compress=1&resize=400x300", height: 100, width: 150,)),


                Container(
                  height: 50,

                  decoration: BoxDecoration(

                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(10),

                  


                  )) 

                  
                
                




                ]
              ),
            )


          


      

    );
          
        
         
    

        
        
        
  }
}