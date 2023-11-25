import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import '../Models/Photospixels.dart';

class Gallerycontent extends StatefulWidget{
  @override
  State<Gallerycontent> createState() => _GallerycontentState();
}

class _GallerycontentState extends State<Gallerycontent> {
  Future<PhotoPixels> fetchData() async {
    final dio = Dio();
    final url = "https://api.pexels.com/v1/search";
    final queryParameters = {
      'query': 'islamic quotes',
      'per_page': '100',
    };
    final headers = {
      'Authorization': 'htmuDFDDBTY3PhnyFyy2OP3QR1AMUhp96dCoPXFMRLuRLMykcOku75GK',
    };
    final response = await dio.get(
      url,
      queryParameters: queryParameters,
      options: Options(headers: headers),
    );
    if (response.statusCode == 200) {
      return PhotoPixels.fromJson(response.data);
    } else {
      throw Exception('Failed to load data');
    }
  }
  Dowmloadimage(String url) async{
    final dio = Dio();

    var directory=await getApplicationDocumentsDirectory();
    dio.download(url, directory.path,onReceiveProgress: (total,download){
      Get.defaultDialog(
          title: "Welcome to Flutter Dev'S",
          middleText: "FlutterDevs is a protruding flutter app development company with "
              "an extensive in-house team of 30+ seasoned professionals who know "
              "exactly what you need to strengthen your business across various dimensions",
          backgroundColor: Colors.teal,
          titleStyle: TextStyle(color: Colors.white),
          middleTextStyle: TextStyle(color: Colors.white),
          radius: 30
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PhotoPixels>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.photos.isEmpty) {
          return Center(child: Text('No data available'));
        } else {
          return ListView.builder(
            itemCount: snapshot.data!.photos.length,
            itemBuilder: (context, index) {
              final photo = snapshot.data!.photos[index];
              return  GestureDetector(
                onTap: (){
                  Dowmloadimage(photo.src.large);
                },
                child: Container(width: MediaQuery.of(context).size.width,
                    child: Image.network(photo.src.large,)),
              );

            },
          );
        }
      },
    );
  }
}