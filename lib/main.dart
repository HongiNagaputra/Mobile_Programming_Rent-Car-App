// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/Screens/getStarted/body.dart';
import 'package:rent_car_app/Screens/getStarted/getStarted_screen.dart';
import 'package:rent_car_app/Screens/homePage/homepage_screen.dart';
import 'package:rent_car_app/aboutus.dart';
import 'package:rent_car_app/article.dart';
import 'package:rent_car_app/Screens/homePage/body.dart';
import 'package:rent_car_app/myrent.dart';
import 'package:rent_car_app/settings.dart';
import 'package:rent_car_app/constants.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appThemeData = ThemeData(
      primarySwatch: MaterialColor(Colors.grey.shade50.value, {
        50: Colors.grey.shade50,
        100: Colors.grey.shade100,
        200: Colors.grey.shade200,
        300: Colors.grey.shade300,
        400: Colors.grey.shade400,
        500: Colors.grey.shade500,
        600: Colors.grey.shade600,
        700: Colors.grey.shade700,
        800: Colors.grey.shade800,
        900: Colors.grey.shade900
      }),
      primaryColor: kPrimaryColor,
      bottomAppBarColor: kPrimaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return MaterialApp(
      title: 'Rent Car App',
      theme: appThemeData,
      home: const GetStartedScreen(),
    );
  }
}