import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:islam/Components/Controlles.dart';
import 'package:islam/Pages/Boardingscreen.dart';

class Splashscreen extends StatefulWidget{
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {


  @override
  void initState() {
    super.initState();

      // Navigator.push(
      //   context,
      //   CupertinoPageRoute(
      //     builder: (context) => Boardingscreen(),
      //   ),
      // );

  }
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.add
        ),
      ),
    );
  }
}