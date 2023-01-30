import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  final Shader headerGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 1, 242, 255),
     Color.fromARGB(244, 43, 34, 23),
     ]
  ).createShader(
    Rect.fromLTWH(0, 0, 200.0, 70.0)
  );


  final Shader highlightrGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 122, 8, 94),
     Color.fromARGB(244, 20, 251, 8),
     ]
  ).createShader(
    Rect.fromLTWH(0, 0, 200.0, 70.0)
  );


  final Shader overAllGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 1, 242, 255),
    Color(0xffDE4839),
    Color(0xff2827CC),
    Color(0xff3DBE29),
    Color(0xffEDBF69),
    Color(0xffE03B8B),

     
     ]
  ).createShader(
    Rect.fromLTWH(0, 0, 200.0, 70.0)
  );



  mySkills(num1, type){
    return Row(
      children: [
        Text(num1, style: TextStyle(
          fontSize: 30, 
          fontWeight: FontWeight.bold,
          foreground: Paint()..shader = overAllGradient,
          ),),
        Container(
          margin: EdgeInsets.only(top:10),
          child: Text(type),

        ),

      ],);
  }



  mySpecialzation(icon, text){
    return Container(

      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color.fromARGB(255,30, 31, 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(icon, color: Colors.white,
            ),
            SizedBox(height: 10,),
            Text(text, style: TextStyle(foreground: Paint()..shader =highlightrGradient, fontSize: 16),)

          ],)
        ),
      ),
    );


  }


  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
    
    
        backgroundColor: Colors.grey.shade200,
        
        extendBodyBehindAppBar: true,
    
        appBar: AppBar(
          foregroundColor: Colors.red,
          backgroundColor: Colors.transparent,
          
          leading: PopupMenuButton(icon: Icon(Icons.menu),
          color: Color.fromARGB(255, 233, 206, 206),
          
          itemBuilder: (context) => 
          [
            PopupMenuItem(
             child: TextButton(
               child: Text("projects"),
               onPressed: (){
                Navigator.popAndPushNamed(context, 'about');
               }
              )
              
          ),


          PopupMenuItem(
             child: TextButton(
               child: Text("About"),
               onPressed: (){
                Navigator.popAndPushNamed(context, 'home');

               }
              )
              

          ),


         ]), 
        ),



        // drawer: Drawer(),



        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blue, Colors.yellow]
            )
          ),
          child:SlidingSheet(
      elevation: 0,
      cornerRadius: 38,
      backdropColor: Colors.transparent,
      snapSpec: const SnapSpec(
        snap: true,
        snappings: [0.4, 0.7, 1.0],
        positioning: SnapPositioning.relativeToAvailableSpace,
      ),
      body: Container(

        child: Stack(
          children :[

            Container(
              margin: EdgeInsets.all(20),

              child: ShaderMask(shaderCallback: (bound) {

                return LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.red, Colors.transparent]).createShader(Rect.fromLTRB(0, 0, bound.width, bound.height));

              },

              blendMode: BlendMode.dstIn,
              child: Image.asset("assets/CHIRAG.jpg", height: 500,
              fit: BoxFit.contain,),

              
              )
            ),


          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.49),
            child: Column(
              children: [

                Text("Chirag Kumar", 
                style: TextStyle(foreground: Paint()..shader = headerGradient,fontSize: 40,fontWeight: FontWeight.bold),),

                SizedBox(height: 4,),

                 Text("Flutter Devloper", 
                style: TextStyle(foreground: Paint()..shader = highlightrGradient,fontSize: 40,fontWeight: FontWeight.bold),),
              ],
            ),
            
          )




          ]

          

          ,
        )
      ),
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(top: 30, left: 20, right: 30),
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                        mySkills("40+", "Projects"),
                        mySkills("40+", "Projects"),
                        mySkills("40+", "Projects"),
                        
                ],
                ),

                SizedBox(height: 20,),

                Text("SpecializedIn", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  ),
                ),

                SizedBox(height: 15,),

            


            // row 2
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                        mySpecialzation(FontAwesomeIcons.android, "Android"),
                        mySpecialzation(FontAwesomeIcons.git, "Git"),
                        mySpecialzation(FontAwesomeIcons.python, "Pyhton"),
                       
                        
                ],
            ),

                SizedBox(height: 20,),

                Text("OpenSources", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  ),
                ),

                SizedBox(height: 15,),

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                        mySpecialzation(FontAwesomeIcons.google, "google"),
                        mySpecialzation(FontAwesomeIcons.aws, "aws"),
                        mySpecialzation(FontAwesomeIcons.cartPlus, "CartPlus"),
                       
                        
                ],
            ),


          ]
          
          

            
          

          )
        );
      },
    ),

      )

      

    );

  }
}