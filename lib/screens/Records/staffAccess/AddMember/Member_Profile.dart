import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../ThemeUi/uitheme.dart';
import '../EditMember/EditProfile2.dart';

class MemberProfile extends StatefulWidget {
  const MemberProfile({super.key});

  @override
  State<MemberProfile> createState() => _MemberProfileState();
}

class _MemberProfileState extends State<MemberProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              // Navigator.pushReplacement(
              //     // context, MaterialPageRoute(builder: (context) => Home())
              //     );
            },
            child: Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.black,
            )),
        title: Text(
          'Staff Records',
          style: GoogleFonts.arimo(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset(
              'assets/images/iconoir_cancel.png',
              height: 28,
              width: 28,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(
          left: 17,
          right: 17,
        ),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.23,
                  decoration: BoxDecoration(
                      color: Colors.transparent //Color(0xFF711AC5)
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                            EdgeInsets.only(left: 0, right: 20, top: 48),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/ellipse-759-bg-Hwb.png',
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.25,
                                  height:
                                  MediaQuery.of(context).size.height * 0.04,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                    color: Color(0xFF740AC7),
                                  ),
                                  child: Text(
                                    'Admin',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Dr. Kim Jones',
                                  style: GoogleFonts.arimo(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'MBBS, DLO, MS(ENT)',
                                  style: GoogleFonts.arimo(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'ENT specialist',
                                  style: GoogleFonts.arimo(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF740AC7)),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile2()));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 8),
                                    height: 26,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: AppColors.primary
                                    ),
                                    child: Text(
                                      'Edit Profile',
                                      style: GoogleFonts.arimo(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 2,
                  color: Color(0xFFD9D9D9),
                ),
                SizedBox(
                  height: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Appointment Slots',
                      style: GoogleFonts.arimo(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 47,
                      child: Divider(
                        height: 3,
                        thickness: 2,
                        color: Color(0xFF009394),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'Birthday',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF6D6D6D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      '4/12/1993',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        '4/12/1993',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF6D6D6D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      '30',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'Gender',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF6D6D6D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'Male',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Divider(
                  height: 1,
                  thickness: 2,
                  color: Color(0xFFD9D9D9),
                ),
                SizedBox(height: 18,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact DETAILS',
                      style: GoogleFonts.arimo(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 47,
                      child: Divider(
                        height: 3,
                        thickness: 2,
                        color: Color(0xFF009394),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'Mobile',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF6D6D6D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      '+91 986 563214',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width*0.24,
                        child:Image.asset('assets/images/ion-logo-whatsapp.png',height: 15,width: 15,)
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      '+91 986 563214',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'Email',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF6D6D6D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'rameshpatel@gmail.com',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'Address',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF6D6D6D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Text(
                        'Plot No. 4-75/1, Madhavi Nagar,Opposite BHEL R(&)D Gate, BalaNagar Hyderabad, Telangana, 500037.',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Divider(
                  height: 1,
                  thickness: 2,
                  color: Color(0xFFD9D9D9),
                ),
                SizedBox(height: 18,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bank DETAILS',
                      style: GoogleFonts.arimo(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 47,
                      child: Divider(
                        height: 3,
                        thickness: 2,
                        color: Color(0xFF009394),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'UPI ID',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF6D6D6D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Text(
                        'ram214@ybl',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'Bank',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF6D6D6D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Text(
                        'Indian Bank',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'A/c no.',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF6D6D6D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Text(
                        '5213 5123 6554 5894',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'IFSC code',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF6D6D6D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Text(
                        'IDBI000H013',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'Account Holder',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF6D6D6D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Text(
                        'Kim Jones',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                  ],
                ),

                Divider(
                  height: 1,
                  thickness: 2,
                  color: Color(0xFFD9D9D9),
                ),
                SizedBox(height: 18,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Documents',
                      style: GoogleFonts.arimo(
                        fontSize: 16,
                        color:Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 47,
                      child: Divider(
                        height: 3,
                        thickness: 2,
                        color: Color(0xFF00E0C7),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'ID type',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF6D6D6D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Text(
                        'Aadhar',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'ID no.',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF6D6D6D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Text(
                        '9658 4521 6563 8954',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.35,
                      child: Text(
                        'Other Documents  ',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF6D6D6D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: Text(
                        'Aadhar card.png',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF006270),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                Divider(
                  height: 1,
                  thickness: 2,
                  color: Color(0xFFD9D9D9),
                ),
                SizedBox(height: 18,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PAYMENTS HISTORY',
                      style: GoogleFonts.arimo(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 47,
                      child: Divider(
                        height: 3,
                        thickness: 2,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Receipts:',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6D6D6D),
                      ),
                    ),
                    SizedBox(height: 4,),
                    Text(
                      'Salary_aug23',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary
                      ),
                    ),
                    SizedBox(height: 4,),
                    Text(
                      'Salary_july23',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14,),
              ]),
        ),
      ),
    );
  }
}
