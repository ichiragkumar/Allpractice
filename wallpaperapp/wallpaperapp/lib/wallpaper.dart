import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'fullscreen.dart';

class WallpaperScreen extends StatefulWidget {
  const WallpaperScreen({super.key});
  @override

  State<WallpaperScreen> createState() => _WallpaperScreenState();
}

class _WallpaperScreenState extends State<WallpaperScreen> {


  List images = [];
  int page = 1;

  fetchapi() async {

    await http.get(
      Uri.parse("https://api.pexels.com/v1/curated?per_page=80"),
      headers:{
        'Authorization': 'TSyIdHNVuO1RY3OhAdmQH1tmDpkNNulvwTkKrkiVM1yet7sEM4h2J5zP'
        }

    ).then((value)
     { 
      // print(value.body);


      Map result = jsonDecode(value.body);
      print(result);


      setState(() {
        images = result['photos'];
      });
      print(images);
      print(images[0]);
     
      
      print(images.length);

      



      

    }
      
    );
  }



  void initState(){
    super.initState();
    fetchapi();
  }







loadmore() async {
    setState(() {
      page = page + 1;
    });
    String url =
        'https://api.pexels.com/v1/curated?per_page=80&page=' + page.toString();
    await http.get(Uri.parse(url), headers: {'Authorization': 'TSyIdHNVuO1RY3OhAdmQH1tmDpkNNulvwTkKrkiVM1yet7sEM4h2J5zP'}).then(
        (value) {
      Map result = jsonDecode(value.body);
      setState(() {
        images.addAll(result['photos']);
      });
    });
  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Column(


        children: [

Expanded(
            child: Container(
              child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 2,
                      crossAxisCount: 3,
                      childAspectRatio: 2 / 3,
                      mainAxisSpacing: 2),
                      itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FullScreen(
                                      imageurl: images[index]['src']['large2x'],
                                    )));
                      },
                      child: Container(
                        color: Colors.white,
                        child: Image.network(
                          images[index]['src']['tiny'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
            ),
          ),
         

            InkWell(
              onTap: (){loadmore();},
              child: Container(
                color: Colors.yellow,
                
            
                height: 60,
                width: double.infinity,
                child: Center(
                  child: Text("Load More",
                    style: TextStyle(color: Color.fromARGB(255, 221, 197, 197))
                   
                     
                  ),
                ),
                       ),
            )
        ],
      )
    );
  }
}