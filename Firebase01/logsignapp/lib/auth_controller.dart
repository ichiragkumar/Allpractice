

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logsignapp/login_page.dart';
import 'package:logsignapp/welcome_page.dart';



class AuthController extends GetxController{


    static AuthController instance = Get.find();

    late Rx<User?> _user;

    FirebaseAuth auth = FirebaseAuth.instance;


    @override
    void onReady(){

      super.onReady();


      _user =Rx<User?>(auth.currentUser);
      _user.bindStream(auth.userChanges());

      ever(_user, _initalScreen);


    }   


    _initalScreen(User? user){
      if(user==null){
        print("login page");
        Get.offAll(()=>LoginPage());

      }else{
        print("Welcome Page");
        Get.offAll(()=>WelcomePage());
      }

    }

    Future<void> register(String email, password) async {
      try{
        await   auth.createUserWithEmailAndPassword(email: email, password: password);

      }catch(e){

        Get.snackbar("About USer", "user messages",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text("Account creation failed", style: TextStyle(color: Colors.red),),
        messageText: Text(e.toString(),style: TextStyle(color: Colors.red))
        );

      }

    }






}