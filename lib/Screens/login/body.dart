// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/Screens/homePage/homepage_screen.dart';
import 'package:rent_car_app/Screens/signUp/signup_screen.dart';
import 'package:rent_car_app/components/background.dart';
import 'package:rent_car_app/constants.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}


class _BodyState extends State<Body> {
    Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
  static Future<User?> loginUsingEmailPassword(
    {required String email, 
    required String password, 
    required BuildContext context}) async{
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch(e){
      if(e.code == "user-not-found"){
        // ignore: avoid_print
        print("No user found for that email");
      }
    }
    return user;
  }
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done){
            return Background(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      "assets/logos/FanRentalAuto.png",
                      ),
                  ),
                    TextFieldContainer(
                      child: TextField(
                        controller: _emailController,
                        cursorColor: Colors.white,
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_outlined, 
                            color: Colors.white,
                            size: 30,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, 
                            width: 2,),
                            ),
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontFamily: 'BeVietnamPro',
                            fontSize: 20,
                            color: Colors.grey,
                          )
                        ),
                      ),
                    ),
                    TextFieldContainer(
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        cursorColor: Colors.white,
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.white,
                            size: 30,
                          ),
                          suffixIcon: Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, 
                            width: 2,),
                            ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontFamily: 'BeVietnamPro',
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, left: 170),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontFamily: 'BeVietnamPro',
                          color: Color.fromARGB(255, 238, 238, 238),
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
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
                        onPressed: () async{
                          User? user = await loginUsingEmailPassword(
                            email: _emailController.text, 
                            password: _passwordController.text, 
                            context: context);
                          // ignore: avoid_print
                          print(user);
                          if(user != null){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                              return const HomePageScreen();
                            },
                            )
                            );
                          }
                        },
                        child: Column(
                          children: const [
                            Text("Login",
                              style: 
                              TextStyle(
                                color: Colors.black,
                                fontFamily: 'BeVietnamPro',
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
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
                                      const Text("Login with",
                                      style: 
                                        TextStyle(
                                          color: Color.fromARGB(255, 66, 66, 66),
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
                                      const Text("Login with",
                                      style: 
                                        TextStyle(
                                          color: Color.fromARGB(255, 66, 66, 66),
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
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
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
                                  return const SignUpScreen();
                                },
                              ),
                              );
                            },
                            child: const Text(
                              "Sign Up",
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
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
      ),
    );
  }
}

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