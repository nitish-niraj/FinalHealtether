import 'package:finalhealtether/screens/onboarding/logoDisplay/onboarding18.dart';
import 'package:flutter/material.dart';

class Onboarding17 extends StatefulWidget {
  const Onboarding17({super.key});

  @override
  State<Onboarding17> createState() => _Onboarding17State();
}

class _Onboarding17State extends State<Onboarding17> {
  @override
  void initState() {
    super.initState();

    // Add a delay to simulate a 5-second splash screen
    Future.delayed(Duration(seconds: 2), () {
      // Navigate to the main screen
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => onbording18(),
      ));
    });
  }
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
          child: Image.asset('assets/Logo3.png',height:  58*he,width: 260*wi,),
        ),
      ),
    );
  }
}
