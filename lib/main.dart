import 'package:flutter/material.dart';
import 'package:food_app/ui/signup_and_login/sign_up_second_number.dart';
import 'package:food_app/ui/signup_and_login/sign_up_with_name.dart';
import 'package:food_app/ui/splash_and_onboarding/onboarding_screen.dart';
import 'package:food_app/ui/splash_and_onboarding/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fast Food',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/signUpSecond',
      routes: {
        '/splash' : (context) => SplashScreen(),
        '/onBoarding': (context) => OnBoarding(),
        '/signUpFirst' : (context) => SignUpFirst(),
        '/signUpSecond' : (context) => SignUpSecond(),
        // '/searchResult25' : (context) => SearchResult25(),
        // '/propertyDetail1' : (context) => PropertyDetail1(),
        // '/propertyDetail2' : (context) => PropertyDetail2(),
        // '/propertyDetail3' : (context) => PropertyDetail3(),
        // '/userProfile' : (context) => UserProfile(),
        // '/favoritesScreen' : (context) => FavoritesScreen(),
        // '/searchExpanded2' : (context) => SearchExpanded2(),
        // '/mapScreen' : (context) => MapScreen(),
        // '/saraScreen' : (context) => SaraProject(),
        // '/second': (context) => SecondScreen(),
      },
    );
  }
}
