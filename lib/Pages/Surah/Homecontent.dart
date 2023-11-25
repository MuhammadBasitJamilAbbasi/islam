import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

class Homecontent extends StatelessWidget {
  int surahnumber;
  Homecontent({ required this.surahnumber});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(quran.getSurahName(surahnumber)),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text( quran.basmala),
              Expanded(
                child: ListView.builder(
                  itemCount: quran.getVerseCount(surahnumber),
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        quran.getVerse(surahnumber, index + 1, verseEndSymbol: true),
                        textAlign: TextAlign.right,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}