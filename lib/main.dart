
import 'package:flutter/material.dart';
import 'package:taleb/pages/myorder/orderdetails.dart';
import 'package:taleb/pages/profile/editprofile.dart';
import 'package:taleb/pages/profile/profile.dart';
import 'package:taleb/screens/home.dart';

import 'onboarding/boardingHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool isUserLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: isUserLoggedIn ? SplashScreen.id : Myui.id,
      initialRoute: BoardingHome.id,
      routes: {
        BoardingHome.id: (context) => BoardingHome(),
        Home.id: (context) => Home(),
        Profile.id: (context) => Profile(),
        EditProfile.id: (context) => EditProfile(),
        OrderDetails.id: (context) => OrderDetails(),
      },
    );
  }
}
