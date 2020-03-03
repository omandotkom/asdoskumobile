import 'package:flutter/material.dart';
import 'dart:async';
import 'intro.dart';
class SplashScreen extends StatefulWidget{

  _SplashScreen createState() => _SplashScreen();

}

class _SplashScreen extends State<SplashScreen>{

  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
     
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => new Introduction()),

      );
    });
  }

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            new Image.asset('assets/images/1.png', fit: BoxFit.contain,),

            SizedBox(height: 12.0,),

            Text("No.1 di Indonesia untuk Dosen Tercinta",
              style: TextStyle(color: Colors.white, fontSize : 12.0, fontFamily: "sans")
            ),
            
          ],
        ),
      ),
    );
  }

}