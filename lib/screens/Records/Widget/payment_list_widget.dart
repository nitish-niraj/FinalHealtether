import 'package:finalhealtether/screens/Records/Model/payment_list.dart';
import 'package:finalhealtether/screens/Records/Payment/payments_record_info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget PaymentListWidget(BuildContext context,PaymentListModel data){
  var he = MediaQuery.of(context).size.height/844;
  var wi = MediaQuery.of(context).size.width/389;
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentsRecordInfo()));
    },
    child: Container(
      padding: EdgeInsets.all(12*wi),
      width: wi*358,
      height: he*95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: wi*200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.name,style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(data.phoneNumber,style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text('Last visited :',style: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                     color: Color(0xFF8E8E8E),
                  ),),
                  Text(data.lastVisit,style: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                     color: Color(0xFF8E8E8E),
                  ),),
                ],),
              ],
            ),
          ),
          SizedBox(width: 8,),
          Container(
            width: 2.0, // Width of the vertical line
            height: 66.0*wi, // Height of the vertical line
            color: Color(0xFF5351C7), // Color of the vertical line
          ),
          SizedBox(width: 12,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Payment Status',style: GoogleFonts.poppins(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Colors.black
              ),),
              OutlinedButton(
                  onPressed: (){},
                  child: Text(data.completed==true?'Completed':'Pending',style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: data.completed== true?Color(0xFF5BB104):Color(0xFFF02711),
                  ),),
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.all(Radius.circular(8))
                    ),
                  padding: EdgeInsets.symmetric(horizontal: 19,vertical: 8),
                  side: BorderSide(color: data.completed== true?Color(0xFF5BB104):Color(0xFFF02711)),
                  backgroundColor: data.completed== true?Color(0xFF5BB104).withOpacity(0.1):Color(0xFFF02711).withOpacity(0.1),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}