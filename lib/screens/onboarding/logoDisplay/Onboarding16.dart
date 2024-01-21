import 'package:flutter/material.dart';

class Onboarding16 extends StatelessWidget {
  const Onboarding16({super.key});

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
          child: Image.asset('assets/Logo2.png',height:  58*he,width: 260*wi,),
        ),
      ),
    );
  }
}
