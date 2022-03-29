// ignore_for_file: unnecessary_const, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "About Us",
            style: const TextStyle(fontSize: 20, fontFamily: 'BeVietnamPro',color: Colors.white,
          )
          ),
          centerTitle: true,
          leading: Padding(
                    padding: EdgeInsets.only(left: 10,),
                    child: Material(
                      color: Colors.transparent,
                      child: IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        }, 
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                      ),
                    ),
                  ),
        ),
        body: Column(
          children: [
            Card(
              margin: const EdgeInsets.only(top: 40, right: 0, left: 0, bottom: 0),
              child: Container(
                padding:
                    const EdgeInsetsDirectional.only(top: 55, start: 25, end: 25),
                width: 500,
                child: const Text(
                  "Fan Rental Auto (FanRA) has been established in 2022, our company is engaged in Luxurious Car Rental.Currently We are providing numerous types of vehicles based on what the customer needs. To give a satisfaction to every customer, the fleets we provide are confirmed and checked to always be in mint condition and excellent, because routine maintenance must be done to ensure the comfort and safety of every customers while using our services. Your satisfactions are always be our company's priority. The duration of the rental that we provide also varies, starting from daily, weekly, monthly, to yearly.",
                  textAlign: TextAlign.center,
                  // ignore: unnecessary_const
                  style: const TextStyle(fontSize: 20, fontFamily: 'BeVietnamPro'),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(0),
              child: Container(
                width: 800,
                height: 170,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/aboutus.png"),
                  fit: BoxFit.fitWidth,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
