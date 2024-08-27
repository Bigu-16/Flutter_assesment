import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color myColor;

    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/home_page');
    });

    myColor = Color.fromARGB(255, 186, 186, 186);
    Color lighterColor = myColor.withOpacity(0.1);

    return Container(
        decoration: BoxDecoration(
          // color: myColor,
          gradient: LinearGradient(
          colors: [lighterColor, myColor], // Lighter color at the top, myColor at the bottom
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
          image: DecorationImage(
              image: AssetImage('asset/image1.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  myColor.withOpacity(0.5), BlendMode.dstATop)),
        ),
        
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,250,0,0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                              Text(
                                'Welcome to',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              
                            ),
                    SizedBox(height: 5),
                    Text('SPEEDY CHOW', style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 40,
                    ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
