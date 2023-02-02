// import 'package:flutter/material.dart';

// import 'package:http/http.dart' as http;

// class WallpaperScreen extends StatefulWidget {
//   const WallpaperScreen({super.key});
//   @override

//   State<WallpaperScreen> createState() => _WallpaperScreenState();
// }

// class _WallpaperScreenState extends State<WallpaperScreen> {

//   fetchapi() async {

//     await http.get(
//       Uri.parse("https://api.api-ninjas.com/v1/facts?limit=20"),
//       headers:{
//         'Authorization': 'rQpAkAsrTlSy4lGJq/ImKw==fJKVsEBpMrA7MuBv'
//         }

//     ).then((value) {print("i am ok -- 200  ok...");}
      
//     );
//   }



//   void initState(){
//     super.initState();
//     fetchapi();
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(


//       body: Column(


//         children: [


//           Expanded(
//             child: Container(
//               color: Colors.red,


//               child: GridView.builder(
//                 itemCount: 90,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3, 
//                   crossAxisSpacing: 2, 
//                   childAspectRatio: 2/3, 
//                   mainAxisSpacing: 2
//                 ), 

//                itemBuilder: (context, index){

//                 return Container(color: Colors.white,);
//                })


//             ),
            
//             ),


//             Container(

//               height: 60,
//               width: double.infinity,
//               child: IconButton(
//                 onPressed: (){
//                 },
//                 icon: Icon(Icons.more),
//                 color: Colors.green,
                 
//               ),
//            )
//         ],
//       )
//     );
//   }
// }