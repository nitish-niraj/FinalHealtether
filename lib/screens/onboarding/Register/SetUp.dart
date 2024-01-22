import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetUp extends StatelessWidget {
  const SetUp({super.key});

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height/844;
    var wi = MediaQuery.of(context).size.width/389;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16*wi),
        height: he*844,
        width: wi*389,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFFFFF),
              Color(0xFF56D0AE)], // Your two colors
          ),
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 62*he,),
            Text('Welcome to our Community!',style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w700,
              fontSize: 36*wi,
              color: Colors.black
            ),),
            SizedBox(height: 6*he,),
            Text('Let’s set up a clinic for you.',style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 16*wi,
              color: Color(0xFF505050),
            ),),
          ],
        )
      ),
    );
  }
}
