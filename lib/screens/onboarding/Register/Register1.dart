import 'package:finalhealtether/ThemeUi/uitheme.dart';
import 'package:finalhealtether/screens/onboarding/Register/Register2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register1 extends StatelessWidget {
   Register1({super.key});
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height/844;
    var wi = MediaQuery.of(context).size.width/389;
    TextEditingController NameCon = TextEditingController();
    TextEditingController MobileCon = TextEditingController();
    bool visNameError = true;
    bool visMobileNumberError = true;
    bool EverThingIsCorrect = true;
    return Scaffold(
      body: Container(
        width: wi*389,
        height: he*844,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32*he,),
            Center(
              child: Text(
                'Register',
                style: GoogleFonts.montserrat(
                  fontSize: 32*he,
                  color: Colors.black,
                  fontWeight: FontWeight.normal
                ),
              ),
            ),
            SizedBox(height: 16*he,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 4.0, // Set the height of the line
                  width: 112*wi,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                      color: Color(0xFF52CFAC),
                  ),// Set the width of the line
                   // Set the color of the line
                ),
                Container(
                  height: 4.0,
                  width: 112*wi,// Set the height of the line
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color(0xFFF8F7FC),
                  ),// Set the color of the line
                ),
                Container(
                  height: 4.0, // Set the height of the line
                  width: 112*wi, // Set the width of the line
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color(0xFFF8F7FC),
                  ),// Set the color of the line
                ),
              ],
            ),
            SizedBox(height: 16*he,),
            Text('Personal Details',style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 16*wi,
              color: Color(0xFF4B4B4B),
            ),),
            SizedBox(height: 16*he,),
            Text('Enter your name *',style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 16*wi,
              color: Color(0xFF4B4B4B),
            ),),
            SizedBox(height: 8*he,),
            SizedBox(
              width: wi*358,
              child: TextFormField(
                controller: NameCon,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: 'Ex - Jane Doe',
                    fillColor: Color(0xFF908D9E).withOpacity(0.2),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(0)
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(0)
                    ),
                    contentPadding: EdgeInsets.all(16*he)
                ),
              ),
            ),
            Visibility(
                visible: visNameError,
                child:Column(
                  children: [
                    SizedBox(height: 8*he,),
                    Text('The text entered is invalid. Please try again!',style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12*wi,
                      color: Color(0xFFF02711),
                    ),),
                  ],
                )
            ),
            SizedBox(height: 8*he,),
            Text('Enter your mobile number *',style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 16*wi,
              color: Color(0xFF4B4B4B),
            ),),
            SizedBox(height: 8*he,),
            SizedBox(
              width: wi*358,
              child: TextFormField(
                controller: MobileCon,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Mobile number',
                    fillColor: Color(0xFF908D9E).withOpacity(0.2),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(0)
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(0)
                    ),
                    contentPadding: EdgeInsets.all(16*he)
                ),
              ),
            ),
            Visibility(
                visible: visMobileNumberError,
                child:Column(
                  children: [
                    SizedBox(height: 8*he,),
                    Text('The mobile number is incorrect, please try again!',style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12*wi,
                      color: Color(0xFFF02711),
                    ),),
                  ],
                )
            ),
            SizedBox(height: 32*he,),
            SizedBox(
              width: wi*356,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Register2()));
              },
                child: Text('Next',style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.normal,
                    fontSize: 16*he,
                    color: EverThingIsCorrect == true?Colors.white:Color(0xFFC2C2C2)
                ),),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  backgroundColor:  EverThingIsCorrect == true?AppColors.primary:Color(0xFFF5F5F5)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
