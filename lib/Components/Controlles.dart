import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class mycontrollese extends GetxController{

  var selectedIndex = 0;

  var count=0.obs;
  void increment() {
    count++;

  }
  void setselectindex(int v)
  {
    selectedIndex=v;
    update();
  }
  get_page()
  {
    return selectedIndex;
  }
  get_counts()
  {
    return count;
  }


}