import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:wallpaper_manager/wallpaper_manager.dart';
import 'package:wallpaperapp/wallpaper.dart';


class FullScreen extends StatefulWidget {

   final String imageurl;

  const FullScreen({super.key, required this.imageurl});

  @override
  State<FullScreen> createState() => FfullScreenState();
}

class FfullScreenState extends State<FullScreen> {


  Future<void> setwallpaer() async {

    int locationset = WallpaperManager.HOME_SCREEN;
    var file =await DefaultCacheManager().getSingleFile(widget.imageurl);


    String setresult = await WallpaperManager.setWallpaperFromFile(file.path, locationset);
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: Container(

        child: Column(
          
          children: [


            Expanded(child: Container(

              child: Image.network(widget.imageurl)
            )),

            InkWell(
              onTap: (){},
              child: Container(
                color: Colors.yellow,
                
            
                height: 60,
                width: double.infinity,
                child: Center(
                  child: Text("set Wallpaper",
                    style: TextStyle(color: Color.fromARGB(255, 221, 197, 197))
                   
                     
                  ),
                ),
                       ),
            )
          ],
          
          )
      )
    );
  }
}