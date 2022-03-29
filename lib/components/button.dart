import 'package:flutter/material.dart';
import 'package:rent_car_app/Screens/homePage/homepage_screen.dart';
import 'package:rent_car_app/constants.dart';

class Button extends StatelessWidget {
  final String title;
  const Button({Key? key, required this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
              height: 52,
              width: size.width*0.9,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){
                        return const HomePageScreen();
                      },
                    ),
                  );
                },
                child: Column(
                  children: [
                    Text(title,
                      style: 
                      const TextStyle(
                        color: Colors.black,
                        fontFamily: 'BeVietnamPro',
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}