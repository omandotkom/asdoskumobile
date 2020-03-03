import 'dart:async';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/cupertino.dart';

class Introduction extends StatefulWidget {
  Intro createState() => Intro();
}

class Intro extends State<Introduction> {
  final List<PageViewModel> introList = [
    PageViewModel(
      titleWidget: Center(
          child: new Image.asset(
        'assets/images/biglogo.png',
        fit: BoxFit.contain,
        width: 200.0,
        height: 200.0,
      )),
      bodyWidget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/images/2.png",
              fit: BoxFit.contain, width: 200.0, height: 200.0),
        ],
      ),

      ///image: Center(child: new Image.asset('assets/images/2.png', fit: BoxFit.contain, width: 200.0, height: 200.0)),
    ),
    PageViewModel(
      titleWidget: Center(
          child: new Image.asset(
        'assets/images/biglogo.png',
        fit: BoxFit.contain,
        width: 200.0,
        height: 200.0,
      )),
      bodyWidget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/images/3.png",
              fit: BoxFit.contain, width: 200.0, height: 200.0),
        ],
      ),

      ///image: Center(child: new Image.asset('assets/images/2.png', fit: BoxFit.contain, width: 200.0, height: 200.0)),
    ),
    PageViewModel(
      title: "SAMPLE JUDUL",
      bodyWidget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new OutlineButton(
              child: new Text("Mulai Sekarang!"),
              color: Colors.blue,
              onPressed: null,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)))
        ],
      ),

      image: Center(child: new Image.asset('assets/images/biglogo.png', fit: BoxFit.contain, width: 300.0, height: 300.0)),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //backgroundColor: Colors.white,
        home: Scaffold( body: IntroductionScreen(
          pages: introList,
          onDone: () {
            // When done button is press
          },
          onSkip: () {
            // You can also override onSkip callback
          },
          showSkipButton: true,
          skip: const Icon(Icons.skip_next),
          next: const Icon(Icons.navigate_next),
          done: const Text("Lanjut",
              style: TextStyle(fontWeight: FontWeight.w600)),
          dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              color: Colors.black26,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0))),
        )));
  }
}
