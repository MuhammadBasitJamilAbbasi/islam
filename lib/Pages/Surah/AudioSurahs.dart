
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islam/Components/Audiocontroller.dart';
import 'package:quran/quran.dart' as quran;

class Audiosurah extends StatefulWidget{
  int surahnumber;
  Audiosurah({ required this.surahnumber});

  @override
  State<Audiosurah> createState() => _AudiosurahState();
}

class _AudiosurahState extends State<Audiosurah> {

 var audiocontroller=Get.put(Audiocontroller());
  bool isProcessing = false;



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(quran.getSurahName(widget.surahnumber)),
      ),
      body: Center(
        child: Card(
          color: Colors.red,

          child: Container(
                    width: 400,
                     height: 400,
            child: FutureBuilder(builder: (context,bu){
              return Center(
                child: IconButton(
                  icon:  Icon(audiocontroller.isplaying()),
                  iconSize: 64.0,
                  onPressed: (){
                audiocontroller.isplaying();
    },
              ),
              );

            },future: audiocontroller.auidosurahplay(quran.getAudioURLBySurah(widget.surahnumber)),)
    ),
        ),
      ),


    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    audiocontroller.player.dispose();
    super.dispose();

  }
}