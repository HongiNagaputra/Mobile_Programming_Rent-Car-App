// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
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
                  title: Text(
                    "Articles and Blogs",
                    style: TextStyle(
                      fontSize: 20, 
                      fontFamily: 'BeVietnamPro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                centerTitle: true,
        ),
        body: Column(
          children: [
            Card(
              margin: const EdgeInsets.only(top: 20, right: 0, left: 0),
              child: Container(
                padding: const EdgeInsetsDirectional.all(25),
                width: 500,
                child: const Text(
                  'Max Verstappen Takes Game Number One',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(top: 20, right: 15, left: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                padding: const EdgeInsetsDirectional.all(25),
                width: 500,
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Max.png"),
                  fit: BoxFit.fitWidth,
                )),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(top: 20, right: 0, left: 0),
              child: Container(
                padding: const EdgeInsetsDirectional.all(25),
                width: 500,
                child: const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mauris nibh, semper ac erat ac, semper egestas orci. Nam ornare vulputate finibus. Nam nec justo in arcu lacinia venenatis a nec massa. Donec tincidunt ac felis non semper. Pellentesque vel venenatis tortor, eget consequat nunc. Integer nec lacus bibendum, condimentum purus at, maximus dolor. Quisque viverra vestibulum mi. Sed feugiat, ligula in mollis ultricies, tortor libero suscipit quam, quis semper nibh lorem pellentesque metus.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(top: 20, right: 0, left: 0),
              child: Container(
                padding: const EdgeInsetsDirectional.all(25),
                width: 500,
                child: const Text(
                  'Balap Liar di Bali, 3 Luka-Luka',
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}