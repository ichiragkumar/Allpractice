import 'package:flutter/material.dart';
// import 'package:wallpaperapp/quotesall.dart';

import 'package:wallpaperapp/wallpaper.dart';
//  @dart=2.9
void main(){


  runApp(MyWallpaper());

  
}


class MyWallpaper extends StatelessWidget {
  const MyWallpaper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),

      home:   WallpaperScreen(),

    );
  }
}