
import 'package:flutter/material.dart';
import 'package:rent_car_app/components/background.dart';
import 'package:rent_car_app/Screens/login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Container(
            margin: const EdgeInsets.only(top: 100),
            child: Image.asset(
              "assets/images/Volvo.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 12),
            child: Row(
              children: const [
                Text(
                  "Premium Ride\nBest Quality Ride",
                  style: TextStyle( 
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: "BeVietnamPro",
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: const [
                Text(
                  "Wide range of luxury cars for daily rental.\nPrestige cars what nobody can resist.",
                  style: TextStyle(
                    color: Color(0xff959492),
                    fontSize: 12,
                    fontFamily: "BeVietnamPro",
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15,),
              ),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return const LoginScreen();
                    },
                  ),
                );
              },
              child: Row(
                children: const [
                  SizedBox(width: 100,),
                  Text("Let's Get Started",
                    style: 
                    TextStyle(
                      color: Colors.black,
                      fontFamily: 'BeVietnamPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(width: 30,),
                  Icon(Icons.arrow_right_alt, size: 40,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
