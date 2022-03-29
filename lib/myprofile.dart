// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/Screens/homePage/homepage_screen.dart';
import 'package:rent_car_app/components/background.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "My Profile",
          ),
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
              const SizedBox(
                height: 30,
                width: 2000,
                child: Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(top: 0, right: 0, left: 0),
                ),
              ),
              const SizedBox(
                width: 2000,
                child: Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(top: 0, right: 0, left: 0),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/images/Tamvan.jpg"),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
                width: 2000,
                child: Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(top: 0, right: 0, left: 0),
                ),
              ),
              Card(
                color: Colors.transparent,
                margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
                child: Column(
                  children: const [
                    ListTile(
                      title: Center(
                        child: Text(
                          'Fundroo Tamvan',
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
                width: 2000,
                child: Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(top: 0, right: 0, left: 0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40, right: 20, top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "0887 1960 935",
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40, right: 20, top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "fundrootamvan@gmail.com",
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40, right: 20, top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Icon(
                      Icons.cake,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "27/02/2002",
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 0, right: 0),
                alignment: Alignment.center,
                child: SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Edit My Profile',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 224, 194, 21),
                      onPrimary: Colors.black,
                    ),
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