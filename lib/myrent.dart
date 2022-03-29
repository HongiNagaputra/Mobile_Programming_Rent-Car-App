import 'package:flutter/material.dart';
import 'package:rent_car_app/Screens/homePage/homepage_screen.dart';
import 'package:rent_car_app/components/background.dart';
import 'package:rent_car_app/constants.dart';
import 'package:rent_car_app/rentdetails.dart';

class MyRent extends StatelessWidget {
  const MyRent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "My Rent",
          ),
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
          centerTitle: true,
        ),
        body: Background(
          child: Column(
            children: [
              Card(
                color: Colors.transparent,
                margin: const EdgeInsets.only(top: 20, right: 0, left: 0),
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'Active Until 12/03/2022 20:00',
                        style: TextStyle(fontSize: 16, fontFamily: 'BeVietnamPro', fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        'Avanza Old - Banjarmasin',
                        style: TextStyle(fontSize: 12, fontFamily: 'BeVietnamPro', fontWeight: FontWeight.w500),
                      ),
                      contentPadding: EdgeInsets.only(left: 25),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) {
                            return const RentDetails();
                          },)
                          );
                        }, child: const Text('Detail',style: TextStyle(fontFamily: 'BeVietnamPro', fontWeight: FontWeight.w500),))
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.transparent,
                margin: const EdgeInsets.only(top: 10, right: 0, left: 0),
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'Active Until 17/04/2022 20:00',
                        style: TextStyle(fontSize: 16, fontFamily: 'BeVietnamPro', fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        'Bajaj Auto - Papua',
                        style: TextStyle(fontSize: 12, fontFamily: 'BeVietnamPro', fontWeight: FontWeight.w500),
                      ),
                      contentPadding: EdgeInsets.only(left: 25),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) {
                            return const RentDetails();
                          },)
                          );
                        }, child: const Text('Detail',style: TextStyle(fontFamily: 'BeVietnamPro', fontWeight: FontWeight.w500),))
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.transparent,
                margin: const EdgeInsets.only(top: 10, right: 0, left: 0),
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'Active Until 07/03/2022 20:00',
                        style: TextStyle(fontSize: 16, fontFamily: 'BeVietnamPro', fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        'Mercedes Benz S550 - Jakarta',
                        style: TextStyle(fontSize: 12, fontFamily: 'BeVietnamPro', fontWeight: FontWeight.w500),
                      ),
                      contentPadding: EdgeInsets.only(left: 25),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) {
                            return const RentDetails();
                          },)
                          );
                        }, child: const Text('Detail',style: TextStyle(fontFamily: 'BeVietnamPro', fontWeight: FontWeight.w500),))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('History', style: TextStyle(fontFamily: 'BeVietnamPro', fontWeight: FontWeight.w500),),
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    onPrimary: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}