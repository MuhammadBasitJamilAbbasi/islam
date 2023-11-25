
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:islam/Pages/Homescreen.dart';
import 'package:islam/Pages/SplashScreen.dart';



class Boardingscreen extends StatelessWidget {
  final Color kDarkBlueColor = const Color(0xFF053149);


  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Lets GO',
      onFinish: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) =>  Homescreen(),
          ),
        );
      },

      finishButtonStyle: FinishButtonStyle(
        backgroundColor: kDarkBlueColor,
      ),
      // skipTextButton: Text(
      //   'Skip',
      //   style: TextStyle(
      //     fontSize: 16,
      //     color: kDarkBlueColor,
      //     fontWeight: FontWeight.w600,
      //   ),
      // ),
      // trailing: Text(
      //   'Login',
      //   style: TextStyle(
      //     fontSize: 16,
      //     color: kDarkBlueColor,
      //     fontWeight: FontWeight.w600,
      //   ),
      // ),
      // trailingFunction: () {
      //   Navigator.push(
      //     context,
      //     CupertinoPageRoute(
      //       builder: (context) =>  Splashscreen(),
      //     ),
      //   );
      // },

      controllerColor: kDarkBlueColor,
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Image.asset(
          'assets/islam.jpg',
          width: MediaQuery.of(context).size.width,
          height: 400,
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/sliderone.jpg',
          width: MediaQuery.of(context).size.width,
          height: 400,
          fit: BoxFit.fill,
        ),
        Image.asset(
          'assets/slidertwo.jpg',
          width: MediaQuery.of(context).size.width,
          height: 400,
          fit: BoxFit.fill,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'ٱهْدِنَا ٱلصِّرَٰطَ ٱلْمُسْتَقِيمَ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '  Guide us to the straight path \n اے اللہ ہمیں سیدھے راستے پر چلا۔',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'اِنَّ اللّٰهَ مَعَ الصّٰبِرِیْنَ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'بیشک اللہ صابروں کے ساتھ ہے'
                    '\n I will be with those who have patience',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'قُلۡ اِنَّ هُدَى اللّٰهِ هُوَ الۡهُدٰى',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '!بے شک ہدایت صرف اللہ کی ہدایت ہے'
                    '\n Indeed the only guidance is Allah’s Guidance!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}