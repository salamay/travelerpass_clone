import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travellerpass/Providers/MyProvider.dart';
import 'package:travellerpass/Screens/Home/Home.dart';
import 'package:travellerpass/Screens/Intro/IntroScreen.dart';
import 'package:travellerpass/Screens/Login/LogIn.dart';
import 'package:travellerpass/Screens/Registeration/RegisterationScreen.dart';
import 'package:travellerpass/Screens/Widget/CreditCard.dart';
import 'package:travellerpass/Screens/Widget/Drawers/Membership.dart';
import 'package:travellerpass/Screens/Widget/Drawers/MyProfile.dart';

import 'Screens/SplashScreen/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: MyProvider(),
      child: MaterialApp(
        routes: {
          "/splashscreen":(context)=>SplashScreen(),
          "/intro":(context)=>IntroScreen(),
          "/register":(context)=>RegisterationScreen(),
          "/signin":(context)=>LogIn(),
          "/home":(context)=>Home(),
          "/membership":(context)=>Membership(),
          "/creditcard":(context)=>MyCreditCard(),
          "/profile":(context)=>Profile(),
        },
        home: SplashScreen(),
      ),
    );
  }
}
