import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islam/Pages/Surah/AudioSurahs.dart';
import 'package:islam/Pages/Surah/Homecontent.dart';
import 'package:quran/quran.dart' as surah;

class AudioSurahnames extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(itemCount: surah.totalSurahCount,itemBuilder: (context,ind){
          return InkWell(
            onTap:(){
              print(ind.toString());
              Get.to(Audiosurah(surahnumber: ind+1));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.multitrack_audio_sharp),
                  title: Text(
                    surah.getSurahName(ind+1)+" | "+ surah.getSurahNameArabic(ind+1),style: TextStyle(
                      fontSize: 20
                  ),
                  ),
                  subtitle: Text(
                      surah.getPlaceOfRevelation(ind+1)+" | "+surah.getVerseCount(ind+1).toString()+" Ayats"
                  ),
                  trailing:Icon(Icons.audiotrack) ,



                ),
              ),
            ),
          );
        }),
      ),
    );
  }

}