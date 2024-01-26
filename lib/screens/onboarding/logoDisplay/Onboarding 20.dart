import 'package:finalhealtether/ThemeUi/uitheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class onbording20 extends StatefulWidget {
  const onbording20({super.key});

  @override
  State<onbording20> createState() => _onbording20State();
}

class _onbording20State extends State<onbording20> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height/844;
    var wi = MediaQuery.of(context).size.width/389;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top:80),
        width: wi*389,
        height: he*844,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFFFFF), Color(0xFF56D0AE)], // Your two colors
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/Logo3.png',height:  37.37*he,width: 167.5*wi,),
            Stack(
              children: [
                Image.asset('assets/images/Vector 339.png',height:  543*he,width: 1265*wi,
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(
                  width: wi*358,
                  child: SizedBox(
                    child: Padding(
                      padding: EdgeInsets.only(top: 394.0*he,left: 16,right: 16),
                      child: Text(
                        'Expert care, anytime, anywhere. ',
                        style:TextStyle(
                          fontSize: 23*wi,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        textAlign:TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: wi*358,
                  child: SizedBox(
                    child: Padding(
                      padding: EdgeInsets.only(top: 458.40*he,left: 16,right: 16),
                      child: Text(
                        'Access top-tier healthcare - Connect with renowned specialist doctors.',
                        style:TextStyle(
                          fontSize: 14*wi,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        textAlign:TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Container(
                  width: 10,
                  height: 10,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Container(
                  width: 10,
                  height: 10,
                  color: AppColors.primary,
                ),
              ],
            ),
            SizedBox(height: 28,),
            Container(
              height: 61,
              width: 61,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 29,
                ),
                onPressed: () {

                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
