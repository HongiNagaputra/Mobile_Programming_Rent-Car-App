import 'package:flutter/material.dart';
import 'package:rent_car_app/Screens/login/login_screen.dart';
import 'package:rent_car_app/components/background.dart';
import 'package:rent_car_app/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        children: <Widget>[
          Positioned(
            top:0,
            child: Image.asset(
              "assets/logos/FanRentalAuto.png", scale: 1.3,
              ),
          ),
            const TextFieldContainer(
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.create_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, 
                    width: 2,),
                    ),
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                    fontFamily: 'BeVietnamPro',
                    fontSize: 14,
                    color: Colors.grey,
                  )
                ),
              ),
            ),
            const TextFieldContainer(
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white, fontSize: 14),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined, 
                    color: Colors.white,
                    size: 20,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, 
                    width: 2,),
                    ),
                  hintText: "Email",
                  hintStyle: TextStyle(
                    fontFamily: 'BeVietnamPro',
                    fontSize: 14,
                    color: Color.fromRGBO(158, 158, 158, 1),
                  )
                ),
              ),
            ),
            const TextFieldContainer(
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white, fontSize: 14),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                    size: 20,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_outlined,
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
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const TextFieldContainer(
              child: TextField(
                obscureText: true,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white, fontSize: 20),
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
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: SizedBox(
              height: 52,
              width: size.width*0.8,
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
                        return const LoginScreen();
                      },
                    ),
                  );
                },
                child: Column(
                  children: const [
                    Text("Register",
                      style: 
                      TextStyle(
                        color: Colors.black,
                        fontFamily: 'BeVietnamPro',
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SizedBox(
              width: size.width*0.8,
              child: Row(
                children: <Widget>[
                  const buildDivider(),
                  Text("or",
                  style: TextStyle(
                    fontFamily: 'BeVietnamPro',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500,
                    ),
                  ),
                  const buildDivider(),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 40, right: 18),
                child: SizedBox(
                  height: 52,
                  width: size.width*0.38,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    onPressed: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          child: Row(
                            children: [
                              const SizedBox(width: 18,),
                              Text("Login with",
                              style: 
                                TextStyle(
                                  color: Colors.grey.shade500,
                                  fontFamily: 'BeVietnamPro',
                                  fontSize: 19,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              SizedBox(
                                width: 52,
                                child: Image.asset("assets/logos/Google.png",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 40),
                child: SizedBox(
                  height: 52,
                  width: size.width*0.38,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    onPressed: (){},
                    child: Column(
                      children: [
                        FittedBox(
                          child: Row(
                            children: [
                              Text("Login with",
                              style: 
                                TextStyle(
                                  color: Colors.grey.shade500,
                                  fontFamily: 'BeVietnamPro',
                                  fontSize: 19,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              const SizedBox(width: 5,),
                              SizedBox(
                                width: 22,
                                child: Image.asset("assets/logos/Facebook.png",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an accountt? ",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontFamily: 'BeVietnamPro',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, 
                      MaterialPageRoute(
                        builder: (context){
                          return const LoginScreen();
                        },
                      ),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: 'BeVietnamPro',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class buildDivider extends StatelessWidget {
  const buildDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        color: Colors.grey.shade200,
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key, 
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: child,
    );
  }
}