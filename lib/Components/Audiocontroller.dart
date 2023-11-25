import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class Audiocontroller extends GetxController
{
  final player = AudioPlayer();
  Future auidosurahplay(String url) async {
    try {
      await player.setUrl(url);
      await player.play();


    } catch (e) {
      print('Error playing audio: $e');
    }
    return false;
  }

  IconData isplaying()
  {
    if(player.playing)
      {
        player.stop();
        return Icons.pause;
      }else{
      player.play();
      return Icons.play_arrow;
    }



  }

}