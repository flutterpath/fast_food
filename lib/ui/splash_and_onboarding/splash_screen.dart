import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/ui/splash_and_onboarding/onboarding_screen.dart';
import 'package:food_app/utils/colors_const.dart';
import 'package:food_app/utils/image_helper.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => OnBoarding()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: MyColors.yellowMainFFD250,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.splashLogo, height: height*0.15,),
            ],
          )
        ],
      ),
    );
  }

}
