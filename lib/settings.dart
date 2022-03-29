import 'package:flutter/material.dart';
import 'package:rent_car_app/Screens/login/body.dart';
import 'package:rent_car_app/components/background.dart';
import 'package:rent_car_app/components/button.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 70,
              width: size.width,
              color: Colors.transparent,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Material(
                      color: Colors.transparent,
                      child: IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        }, 
                      icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),
                      ),
                    ),
                  ),
                  const SizedBox(width: 100,),
                  const Text(
                    "Settings",
                    style: 
                        TextStyle(
                          color: Colors.white, 
                          fontSize: 24, 
                          fontFamily: 'BeVietnamPro',
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.none
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 90,
              color: Colors.white.withOpacity(0.02),
              child: Row(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text("Dark Mode",
                        style: 
                              TextStyle(
                                color: Colors.white, 
                                fontSize: 20, 
                                fontFamily: 'BeVietnamPro',
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.none
                              ),
                        ),
                        
                      ),
                      const SizedBox(width: 170,),
                      Image.asset("assets/images/Button_on.png", width: 90,)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 90,
              color: Colors.white.withOpacity(0.02),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text("App Notifications",
                    style: 
                          TextStyle(
                            color: Colors.white, 
                            fontSize: 20, 
                            fontFamily: 'BeVietnamPro',
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none
                          ),
                    ),
                  ),
                  const SizedBox(width: 105,),
                  Image.asset("assets/images/Button_off.png", width: 90,)
                ],
              ),
            ),
            const SizedBox(height: 30,),
            const Text("Changed Password",
              style: 
                          TextStyle(
                            color: Colors.white, 
                            fontSize: 20, 
                            fontFamily: 'BeVietnamPro',
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none
                          ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                width: size.width,
                child: const Material(
                  color: Colors.transparent,
                  child: TextFieldContainer(
                    child: TextField(
                      obscureText: true,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                          size: 20,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, 
                          width: 2,),
                          ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontFamily: 'BeVietnamPro',
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: size.width,
                child: const Material(
                  color: Colors.transparent,
                  child: TextFieldContainer(
                    child: TextField(
                      obscureText: true,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                          size: 20,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, 
                          width: 2,),
                          ),
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(
                          fontFamily: 'BeVietnamPro',
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 220,),
              const Button(title: "Save"),
          ],
        ),
      ),
    );
  }
}