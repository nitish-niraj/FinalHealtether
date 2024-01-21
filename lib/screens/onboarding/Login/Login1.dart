import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Login1 extends StatelessWidget {
  Login1({super.key});
  var phoneCon = TextEditingController();
  var passwordCon = TextEditingController();
  bool visMobileNumber = true;
  bool visPassword = false;
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height/844;
    var wi = MediaQuery.of(context).size.width/389;
    return Scaffold(
      body: Container(
        width: wi*389,
        height: he*844,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 38*he,),
            Center(
              child: Text('Login',style: GoogleFonts.montserrat(
                fontSize: 32*he,
                color: Colors.black,
                fontWeight: FontWeight.normal
              ),textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16*he,),
            Text('Enter your mobile number *',style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 16*wi,
              color: Color(0xFF4B4B4B),
            ),),
            SizedBox(height: 8*he,),
            SizedBox(
              width: wi*358,
              child: TextFormField(
                controller: phoneCon,
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
              visible: visMobileNumber,
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
            SizedBox(height: 8*he,),
            Text('Password *',style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 16*wi,
              color: Color(0xFF4B4B4B),
            ),),
            SizedBox(height: 8*he,),
            SizedBox(
              width: wi*358,
              child: TextFormField(
                controller: passwordCon ,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.visibility_off_rounded,color: Colors.black,size: 20*wi,),
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
                visible: visPassword,
                child:Column(
                  children: [
                    SizedBox(height: 8*he,),
                    Text('The password you entered is incorrect, please try again!',style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12*wi,
                      color: Color(0xFFF02711),
                    ),),
                  ],
                )
            ),
            Row(
              children: [
                Text(
                  'By continuing, you agree to our',style: GoogleFonts.poppins(
                    fontSize: 12*he,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF747381)
                ),
                ),
                SizedBox(width: 5*wi,),
                Column(
                  children: [
                    Text(
                      'Terms & Conditions',style: GoogleFonts.poppins(
                      fontSize: 12*he,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF5351C7),
                    ),
                    ),
                    SizedBox(
                      width: 117*wi,
                      child: Divider(
                        height: 0,
                        thickness: 1,
                        color: Color(0xFF5351C7),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 16*he,),
            Text('Forgot Password?',style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 16*wi,
              color: Color(0xFF4B4B4B),
            ),),
            SizedBox(height: 32*he,),
            SizedBox(
              width: wi*356,
              child: ElevatedButton(onPressed: (){},
               child: Text('Log me in',style: GoogleFonts.montserrat(
                 fontWeight: FontWeight.normal,
                 fontSize: 16*he,
                 color: Color(0xFFC2C2C2)
               ),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',style: GoogleFonts.poppins(
                    fontSize: 12*he,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF747381)
                ),
                ),
                SizedBox(width: 5*wi,),
                Column(
                  children: [
                    Text(
                      'Register here',style: GoogleFonts.poppins(
                      fontSize: 16*he,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF5351C7),
                    ),
                    ),
                    SizedBox(
                      width: 117*wi,
                      child: Divider(
                        height: 0,
                        thickness: 1,
                        color: Color(0xFF5351C7),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
