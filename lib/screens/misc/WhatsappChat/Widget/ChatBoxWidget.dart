import 'package:finalhealtether/screens/misc/WhatsappChat/Model/ChatBax.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget ChatBoxWidgat(BuildContext context, ChatBoxModel data) {
  var he = MediaQuery.of(context).size.height / 844;
  var wi = MediaQuery.of(context).size.width / 389;
  return Padding(
    padding: const EdgeInsets.only(top:12),
    child: Container(
      // height: he * 100,
      width: wi * 389,
      child: Column(
          mainAxisAlignment:
          data.check == true ? MainAxisAlignment.end : MainAxisAlignment.start,
          crossAxisAlignment:  data.check == true ?CrossAxisAlignment.end:CrossAxisAlignment.start,
        children:[
          Container(
            decoration: BoxDecoration(
              color: data.send == true ? Color(0xFFE5F4D2) : Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
          // height: he * 100,
          width: wi * 260,

          padding: EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
          child: Column(
            children: [
              SizedBox(
                width: wi * 260,
                child: Text(
                  data.text,
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    data.time,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      fontSize: 11,
                      color: Color(0xFF8E8E8E),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Visibility(
                    visible: data.check == true && data.send == true,
                      child: Icon(
                    Icons.check,
                    size: 10,
                    color: Color(0xFF5351C7),
                    weight: 10,
                  ))
                ],
              )
            ],
          ),
        ),]
      ),
    ),
  );
}
