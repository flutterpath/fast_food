import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/ui/signup_and_login/change_password_screen.dart';
import 'package:food_app/ui/signup_and_login/login_screen.dart';
import 'package:food_app/ui/signup_and_login/reset_password_screen.dart';
import 'package:food_app/ui/signup_and_login/sign_up_second_number.dart';
import 'package:food_app/ui/signup_and_login/sign_up_with_name.dart';
import 'package:food_app/ui/signup_and_login/update_password.dart';
import 'package:food_app/ui/signup_and_login/varification_screen.dart';
import 'package:food_app/ui/splash_and_onboarding/onboarding_screen.dart';
import 'package:food_app/ui/splash_and_onboarding/splash_screen.dart';

import 'food_order_process/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        ScreenUtil.init(

          constraints: constraints,
          designSize: Size(360, 690),
          allowFontScaling: false,
        );
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Fast Food',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: '/homeScreen',
          routes: {
            '/splash' : (context) => SplashScreen(),
            '/onBoarding': (context) => OnBoarding(),
            '/signUpFirst' : (context) => SignUpFirst(),
            '/signUpSecond' : (context) => SignUpSecond(),
            '/varificationScreen' : (context) => VarificationScreen(),
            '/loginScreen' : (context) => LoginScreen(),
            '/resetPassword' : (context) => ResetPassword(),
            '/changePassword' : (context) => ChangePassword(),
            '/updatePassword' : (context) => UpdatePassword(),
            '/homeScreen' : (context) => HomeScreen(),
            // '/searchExpanded2' : (context) => SearchExpanded2(),
            // '/mapScreen' : (context) => MapScreen(),
            // '/saraScreen' : (context) => SaraProject(),
            // '/second': (context) => SecondScreen(),
          },
        );

      },
   );
  }
}


