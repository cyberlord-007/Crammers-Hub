import 'package:crammers_hub/screens/register_screen.dart';
import 'package:crammers_hub/screens/regsucces_screen.dart';
import 'package:flutter/material.dart';
import './constants.dart';
import './screens/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crammers Hub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
            bodyText1: TextStyle(color: kTextColor),
            bodyText2: TextStyle(color: kTextColor)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: OnboardingScreen.id,
      routes: {
        OnboardingScreen.id: (context) => OnboardingScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        RegSuccessScreen.id: (context) => RegSuccessScreen(),
      },
    );
  }
}
