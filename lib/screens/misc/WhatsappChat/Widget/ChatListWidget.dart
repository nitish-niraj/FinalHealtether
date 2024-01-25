import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/ChatList.dart';


Widget ChatListWiget(BuildContext context,ChatListModel data){
  var he = MediaQuery.of(context).size.height/844;
  var wi = MediaQuery.of(context).size.width/389;
  return Padding(
    padding: const EdgeInsets.only(bottom: 4),
    child: Container(
      color: Color(0xFFF8F7FC),
      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 12),
    height: he*77,
     width: wi*358,
      child: Row(
        children: [
          ClipOval(
             child: Image.asset(data.image,height: 50,width: 50,),
           ),
          SizedBox(width: 10*wi,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 200*wi,
                    child: Text(data.name,style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black
                    ),
                      overflow: TextOverflow.ellipsis,
                    ),

                  ),
                  SizedBox(width: 8*wi,),
                  Text(data.time,style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.black
                  ),),
                ],
              ),
              Row(children: [
                Visibility(
                  visible: data.check,
                  child: SizedBox(
                    width: 10,
                    child: Icon(Icons.check,color: Color(0xFF4646B5),size: 8*wi,),
                  ),
                ),
                SizedBox(
                  width: wi*220,
                  child: Text(data.title,style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA1A1A1),),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],)
            ],
          )
        ],
      ),
    ),
  );
}
