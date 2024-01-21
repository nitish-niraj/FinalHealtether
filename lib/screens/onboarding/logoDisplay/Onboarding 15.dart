import 'package:flutter/material.dart';

class Onboarding15 extends StatefulWidget {
  const Onboarding15({super.key});

  @override
  State<Onboarding15> createState() => _Onboarding15State();
}

class _Onboarding15State extends State<Onboarding15> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height/844;
    var wi = MediaQuery.of(context).size.width/389;
    return Scaffold(
      body: Container(
        width: wi*389,
        height: he*844,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFFFFF), Color(0xFF56D0AE)], // Your two colors
          ),
        ),
        child: Center(
           child: Image.asset('assets/Logo1.png',height:  60.08*he,width: 57.627*wi,),
        ),
      ),
    );
  }
}
