import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/staff_record_model.dart';
import '../Widget/staff_record_widget.dart';
import 'AddMember/Add_member_personal_details.dart';

class StaffRecord extends StatefulWidget {
   StaffRecord({super.key});


  @override
  State<StaffRecord> createState() => _StaffRecordState();
}

class _StaffRecordState extends State<StaffRecord> {

  var list =[
    'All',
    'Super admin',
    'Admins',
    'Guests',
  ];

  var listStaffRecord = [
    StaffRecordModel(Name: 'Dr. Ajit Bhalla', PhNo:'+91 8649 32154', Profession: 'Doctor', SuperAdmin: true, Admin: false, Guest:false),
    StaffRecordModel(Name: 'Dr. Kim Jones', PhNo:'+91 8649 32154', Profession: 'Doctor', SuperAdmin: false, Admin: true, Guest:false),
    StaffRecordModel(Name: 'Rahul Jain', PhNo:'+91 8649 32154', Profession: 'Receptionist', SuperAdmin: false, Admin: false, Guest:true),
  ];

  var search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manage Staff',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
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
        width: wi,
        height: he,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16,right: 16,),
                  height:41,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                      controller: search,
                      maxLines: 1,
                      inputFormatters: [LengthLimitingTextInputFormatter(40)],
                      decoration: InputDecoration(
                          hintText: 'Quick Search',
                          suffixIcon: Icon(Icons.arrow_drop_down,size: 30,color: Color(0xFF009394),),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(width: 1, color: Color(0xFF6A798A))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(width: 1, color: Color(0xFF6A798A)))),
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF00E0C7),
                      ),
                      cursorColor: Color(0xFF6A798A)),
                ),
                SizedBox(height: 16,),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: list.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Card(
                          elevation: 2,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xFFF9F4FE),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(1,1),
                                    color: Color(0xFFA342EF),
                                    blurRadius: 4,
                                  )
                                ]
                            ),
                            child: Text(
                              list[index],
                              style: GoogleFonts.arimo(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color:Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 33,),
                Container(
                  padding: EdgeInsets.only(left: 16,right: 16),
                  width: MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height*0.5,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: listStaffRecord.length,
                    itemBuilder: (context,index){
                      return StaffRecordWidget(context, listStaffRecord[index]);
                    },
                  ),
                ),
                const SizedBox(height: 60,),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.width * 0.15,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF00E0C7), // Color of the shadow
                          offset: Offset(0, 2), // Offset of the shadow (horizontal, vertical)
                          blurRadius: 4, // Blur radius of the shadow
                          spreadRadius: 0, // Spread radius of the shadow
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF009394)),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  7), // Set the radius to 0 for a rectangular shape
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddMemberPersonalDetails()));
                        },
                        child: Text(
                          'Add member',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
