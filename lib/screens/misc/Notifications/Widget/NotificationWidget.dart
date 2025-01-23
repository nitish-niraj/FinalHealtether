import 'package:finalhealtether/screens/misc/Notifications/Model/NotificationModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget NotificationWidget(BuildContext context,NotificationModel data){
  var he = MediaQuery.of(context).size.height/844;
  var wi = MediaQuery.of(context).size.width/389;
  return Card(
    elevation:  1,
    child: Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.all(12),
          width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(data.title,style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            color: Color(int.parse(data.titleColor)),
            ),),
            SizedBox(height: 10,),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: data.text1,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: data.textBold,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ), TextSpan(
                    text: data.text2,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  )
                ]
              ),
            ),
            SizedBox(height: 10,),
            Text(data.time,style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Color(0xFF876C05),
            ),),
          ],
        ),
      ),
    ),
  );
}