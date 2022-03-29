// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:rent_car_app/Screens/homePage/body.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: const BottomNavbar(),
    );
  }
}