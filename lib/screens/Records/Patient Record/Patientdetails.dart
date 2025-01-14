import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ThemeUi/uitheme.dart';

class Patientdetails extends StatefulWidget {
  const Patientdetails({super.key});

  @override
  State<Patientdetails> createState() => _PatientdetailsState();
}

class _PatientdetailsState extends State<Patientdetails> {
  @override
  Widget build(BuildContext context) {

    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Patient Records',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body:Container(
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
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                      color: Colors.transparent //Color(0xFF711AC5)
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width:70,
                            height:70,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xFFBCB3E7),
                              shape: BoxShape.circle
                            ),
                            child: Text(
                              'JD',
                              style: TextStyle(
                                fontSize: 27,
                                color: Colors.black
                              ),
                            ),
                          ),
                          SizedBox(width: 16,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jane Doe',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '+91 986 563214',
                                style: GoogleFonts.arimo(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Color(0xFFF8F7FC)
                                    ),
                                    child: Text(
                                      'Edit Profile',
                                      style: GoogleFonts.arimo(
                                        fontSize: wi*0.034,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12,),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: AppColors.primary
                                    ),
                                    child: Text(
                                      'Start consultation',
                                      style: GoogleFonts.arimo(
                                        fontSize:  wi*0.034,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
                      'Personal Details',
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
                        'Age',
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
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Text(
                        'Height',
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
                      '176 cm',
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
                        'Weight',
                        style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Color(0xFF6D6D6D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ), Text(
                      ':',
                      style: GoogleFonts.arimo(
                        fontSize: 14,
                        color: Color(0xFF006270),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      '75 kg',
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
