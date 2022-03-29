import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background
  (
    {
     Key? key,
     required this.child,
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container
      (
        height: size.height,
        width: double.infinity,
        child: Stack
        (
          alignment: Alignment.center,
          children: <Widget>
          [
            Positioned
            (
              top: 0,
              child: Image.asset
              (
                "assets/images/Eclipse_Background.png"
              ),
            ),
            child,
          ],
        ),
        decoration: const BoxDecoration
        (
          gradient: LinearGradient
          (
            begin: Alignment.topCenter, 
            end: Alignment.bottomCenter, 
            colors: 
            [
              Color.fromARGB(255, 34, 34, 34),
              Color.fromARGB(255, 22, 22, 22),           
              Color.fromARGB(255, 5, 5, 5),
              Colors.black,
              Color.fromARGB(255, 5, 5, 5),
              Color.fromARGB(255, 22, 22, 22),
              Color.fromARGB(255, 34, 34, 34),  
            ],
          ),
        )
      ),
    );
  }
}