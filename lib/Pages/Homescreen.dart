import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:islam/Components/Controlles.dart';
import 'package:islam/Pages/Gallerycontent.dart';
import 'package:islam/Pages/Surah/AudioSurahnames.dart';
import 'package:islam/Pages/Surah/Homecontent.dart';
import 'package:islam/Pages/Surah/Surahnames.dart';


class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  var controller=Get.put(mycontrollese());
  var pc= PageController();




  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);


  @override
  Widget build(BuildContext context) {
    print("object");

    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        onPageChanged: (_){

          setState(() {
            pc.animateToPage(controller.get_page(), duration: Duration(microseconds: 1000),curve:Curves.easeInOutCubic );

          });

        },
        controller:pc   ,

        children: [
         Surahnames(),
         AudioSurahnames(),
        Gallerycontent(),
          Gallerycontent(),

        ],
      ),
      bottomNavigationBar: GetBuilder<mycontrollese>(builder: (controller){
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              ),
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                tabs: [
                  GButton(
                    icon: Icons.menu_book_sharp,
                    text: 'Quran',
                    onPressed: () {
                      controller.increment();

                    },
                  ),
                  GButton(
                    icon: Icons.audiotrack_outlined,
                    text: 'Audio Quran',
                    onPressed: () {
                      controller.increment();
                    },
                  ),
                  GButton(
                    icon: Icons.photo_library_sharp,
                    text: 'Photos',
                    onPressed: () {
                      controller.increment();
                    },
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                    onPressed: () {
                      controller.increment();
                    },
                  ),
                ],
                selectedIndex: controller.selectedIndex,
                onTabChange: (index) {
                  controller.setselectindex(index);

                  setState(() {
                    pc.jumpToPage(index);
                  });

                },
              ),
            ),
          ),
        );
      },)
    );
  }
}
