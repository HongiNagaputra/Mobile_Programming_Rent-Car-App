// ignore_for_file: avoid_unnecessary_containers, camel_case_types, duplicate_ignore, unnecessary_this

import 'package:flutter/material.dart';
import 'package:rent_car_app/Screens/login/login_screen.dart';
import 'package:rent_car_app/aboutus.dart';
import 'package:rent_car_app/article.dart';
import 'package:rent_car_app/components/background.dart';
import 'package:rent_car_app/constants.dart';
import 'package:rent_car_app/inbox.dart';
import 'package:rent_car_app/models/car.dart';
import 'package:rent_car_app/myprofile.dart';
import 'package:rent_car_app/myrent.dart';
import 'package:rent_car_app/settings.dart';

// ignore: camel_case_types
class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

// ignore: camel_case_types
class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.car_rental_rounded), label: 'My Rent'),
            BottomNavigationBarItem(
              icon: Icon(Icons.inbox), label: 'Inbox',),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Profile'),
          ],
          currentIndex: _selectedTabIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          backgroundColor: kPrimaryColor,
          onTap: (index) {
            setState(() {
              _selectedTabIndex = index;
            });
          }
      ),
      body: IndexedStack(
        index: _selectedTabIndex,
        children: const [
          page1(),
          page2(),
          page3(),
          page4(),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class page1 extends StatefulWidget {
  const page1({
    Key? key,
  }) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  Icon cusIcon = const Icon(Icons.search_outlined);

  Widget cusSearchBar = const Text("Fundroo",
  style: TextStyle(
            color: Colors.black, 
            fontSize: 20, 
            fontFamily: 'BeVietnamPro',
            fontWeight: FontWeight.bold,
          ),);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: cusSearchBar,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if(this.cusIcon.icon == Icons.search_outlined){
                  this.cusIcon = const Icon(Icons.cancel);
                  this.cusSearchBar = const TextField(
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                      hintText: "What are you looking for?",
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  );
                }else{
                  this.cusIcon = const Icon(Icons.search_outlined);
                  this.cusSearchBar = const Text("Fan Rental Auto",
                    style: TextStyle(
                              color: Colors.black, 
                              fontSize: 20, 
                              fontFamily: 'BeVietnamPro',
                              fontWeight: FontWeight.bold,
                            ),
                  );
                }
              });
            },
            icon: cusIcon,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){
                            return const Settings();
                          },
                        ),
                      );
            },
            icon: const Icon(Icons.settings_outlined,),
          ),
        ],
      ),
      body: Background(
        child: Container(
          child: Column(
            children: [
              const PopularBrandText(),
              Stack(
                children: [
                  const Positioned(
                    right: 10,
                    child: Text("See\nAll\nBrands",    
                    textAlign: TextAlign.end,
                      style: TextStyle(
                        fontFamily: 'BeVietnamPro',
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ),
                  Row(
                    children: [
                      PopularBrandLogo1(size: size,),
                      PopularBrandLogo2(size: size,),
                      PopularBrandLogo1(size: size,),
                      PopularBrandLogo2(size: size,),
                    ],
                  ),
                ],
              ),
              Row(
                    children: [
                      PopularBrandLogo2(size: size,),
                      PopularBrandLogo1(size: size,),
                      PopularBrandLogo2(size: size,),
                      PopularBrandLogo1(size: size,),
                    ],
                  ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10, left: 10, right: 10, 
                    ),
                    child: SizedBox(
                      child: Stack(
                        children: const [
                          Text("Recommendations",
                          style: 
                          TextStyle(
                            color: Colors.white, 
                            fontSize: 24, 
                            fontFamily: 'BeVietnamPro',
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              recommendationList(size: size),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Material(
          color: const Color(0XFFB3AFAC),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(0XFF5E5E5E),
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(radius: 30,
                        backgroundImage: AssetImage("assets/images/Tamvan.jpg"),
                      ),
                      const SizedBox(height: 20,),
                      const Text("Fundroo Tamvan",
                          style: TextStyle(
                            fontFamily: 'BeVietnamPro',
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 15
                            ),
                          ),
                          Text("fundrotamvan@gmail.com",
                          style: TextStyle(
                            fontFamily: 'BeVietnamPro',
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                            ),
                          ),
                    ],
                  ),
                ),
              ),
              buildMenuItem(
                text: 'Saved Search',
                icon: Icons.search_outlined,
                onClicked: (){},
              ),
              buildMenuItem(
                text: 'Articles',
                icon: Icons.newspaper_outlined,
                onClicked: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) {
                        return const Articles();
                      },
                    ),
                  );
                },
              ),
              buildMenuItem(
                text: 'My Rent',
                icon: Icons.car_rental_rounded,
                onClicked: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) {
                        return const MyRent();
                      },
                    ),
                  );
                },
              ),
              buildMenuItem(
                text: 'History',
                icon: Icons.history_rounded,
                onClicked: (){},
              ),
              const SizedBox(height: 5,),
              buildMenuItem(
                text: 'Terms & Conditions',
                icon: Icons.account_balance_outlined,
                onClicked: (){},
              ),
              buildMenuItem(
                text: 'About Us',
                icon: Icons.person_rounded,
                onClicked: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) {
                        return const AboutUs();
                      },
                    ),
                  );
                },
              ),
              const SizedBox(height: 5,),
              const Divider(color: Colors.white,),
              const SizedBox(height: 5,),
              buildMenuItem(
                text: 'Settings',
                icon: Icons.settings_outlined,
                onClicked: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) {
                        return const Settings();
                      },
                    ),
                  );
                },
              ),
              const SizedBox(height: 50,),
              const Divider(color: Colors.white,),
              ListTile(
                title: const Text("Logout", style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'BeVietnamPro',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.end,
                ),
                hoverColor: Colors.white70,
                onTap: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildMenuItem({
    required String text, 
    required IconData icon,
    VoidCallback? onClicked,
    }) {
      const color = Colors.black;
      const hoverColor = Colors.white70;

      return ListTile(
        leading: Icon(icon, color: color,),
        title: Text(text, style: const TextStyle(
          color: color,
          fontFamily: 'BeVietnamPro',
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),),
        hoverColor: hoverColor,
        onTap: onClicked,
      );
    }
}

class recommendationList extends StatelessWidget {
  const recommendationList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(top: 20),
        shrinkWrap: true,
        itemCount: cars.length,
        itemBuilder: (context, index) => CarCard(
          size: size, 
          itemIndex: index, 
          car: cars[index],
        ),
      ),
    );
  }
}

class CarCard extends StatelessWidget {
  const CarCard({
    Key? key,
    required this.size, required this.itemIndex, required this.car,
  }) : super(key: key);

  final Size size;
  final int itemIndex;
  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: size.width*0.94,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: size.width,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration( 
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20), 
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      child: Stack(
                        children: [
                          Positioned(
                            top: -12,
                            left: 0,
                            child: SizedBox(
                              width: 200,
                              child: Image(
                                image: AssetImage(
                                  car.image,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 10,
                            child: Column(
                              children: [
                                Text(
                                  car.title,
                                style: const TextStyle(
                                  fontFamily: 'BeVietnamPro',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 10,
                            child: Column(
                              children: [
                                Text(car.brand,
                                style: TextStyle(
                                  fontFamily: 'BeVietnamPro',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Colors.grey.shade400,
                                ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 10,
                            child: Text(car.price,
                                style: const TextStyle(
                                  fontFamily: 'BeVietnamPro',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                ),
                            ),
                          ),
                          Positioned(
                            top: 35,
                            left: 210,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Transmission",
                                style: TextStyle(
                                  fontFamily: 'BeVietnamPro',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                ),
                                ),
                                SizedBox(height: 5,),
                                Text("Color",
                                style: TextStyle(
                                  fontFamily: 'BeVietnamPro',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                ),
                                ),
                                SizedBox(height: 5,),
                                Text("Mileage",
                                style: TextStyle(
                                  fontFamily: 'BeVietnamPro',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 35,
                            left: 310,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(": "+car.transmission,
                                style: const TextStyle(
                                  fontFamily: 'BeVietnamPro',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                ),
                                ),
                                const SizedBox(height: 5,),
                                Text(": "+car.color,
                                style: const TextStyle(
                                  fontFamily: 'BeVietnamPro',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                ),
                                ),
                                const SizedBox(height: 5,),
                                Text(": "+car.mileage,
                                style: const TextStyle(
                                  fontFamily: 'BeVietnamPro',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            right: 12,
                            child: SizedBox(
                              height: 32,
                              width: size.width*0.4,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: kPrimaryColor,
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  ),
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                ),
                                onPressed: (){},
                                child: Column(
                                  children: const [
                                    Text("Details",
                                      style: 
                                      TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'BeVietnamPro',
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PopularBrandText extends StatelessWidget {
  const PopularBrandText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 30,
            child: Stack(
              children: const [
                Text("Popular Brands",
                style: 
                TextStyle(
                  color: Colors.white, 
                  fontSize: 24, 
                  fontFamily: 'BeVietnamPro',
                  fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),

          ),
        ),
      ],
    );
  }
}

class PopularBrandLogo1 extends StatelessWidget {
  const PopularBrandLogo1({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: size.width*0.17,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10,),
          Image.asset("assets/logos/Toyota.png", width: 70,),
        ],
      ),
    );
  }
}
class PopularBrandLogo2 extends StatelessWidget {
  const PopularBrandLogo2({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: size.width*0.17,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const SizedBox(height: 8,),
          Image.asset("assets/logos/Daihatsu_Logo.png", width: 60,),
        ],
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key, required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.only(left: 15, top: 5, bottom: 2),
      width: size.width*0.73,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}

class page4 extends StatelessWidget {
  const page4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyProfile();
  }
}

class page3 extends StatelessWidget {
  const page3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Inbox();
  }
}

class page2 extends StatelessWidget {
  const page2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyRent();
  }
}
