// ignore_for_file: unnecessary_import, unnecessary_const, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/Screens/homePage/homepage_screen.dart';
import 'package:rent_car_app/components/background.dart';

class Inbox extends StatelessWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Inbox",
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Material(
                      color: Colors.transparent,
                      child: IconButton(
                        onPressed: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const HomePageScreen();
                          },)
                          );
                        }, 
                      icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),
                      ),
                    ),
                  ),
        ),
        body: Background(
          child: Column(
            children: [
              Card(
                color: Colors.transparent,
                margin: const EdgeInsets.only(top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Image(
                      image: const AssetImage('assets/logos/Toyota.png'),
                      width: 100,
                      height: 70,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Promo Toyota Indonesia!',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Sewa 5x, Gratis 1x Sewa Apapun!',
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    const Icon(
                      Icons.delete,
                      color: Colors.red,
                      size: 25.0,
                      textDirection: TextDirection.ltr,
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.transparent,
                margin: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Image(
                      image: AssetImage('assets/images/TheCar.png'),
                      width: 90,
                      height: 70,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Special Deal Mercedes Benz!',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Promo Sewa Hingga IDR 500k!',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    const Icon(
                      Icons.delete,
                      color: Colors.red,
                      size: 25.0,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}