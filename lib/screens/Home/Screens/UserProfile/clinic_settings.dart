import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ClinicSettings extends StatefulWidget {
  ClinicSettings({super.key});

  @override
  State<ClinicSettings> createState() => _ClinicSettingsState();
}

class _ClinicSettingsState extends State<ClinicSettings> {
  TextEditingController text1 = TextEditingController();

  TextEditingController text2 = TextEditingController();

  TextEditingController text3 = TextEditingController();

  TextEditingController text4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
        ),
        actions: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(6),
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.close_rounded,
              ),
            ),
          ),
          SizedBox(
            width: 14,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'ADD NEW CLINIC',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 83.0,
                    ),
                    child: SizedBox(
                      height: 5,
                      width: 54,
                      child: Divider(
                        thickness: 2,
                        color: Color(0xff52CFAC),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      //Describe the logic for image picker
                    },
                    child: CircleAvatar(
                      backgroundColor: Color(0xffF1E7F9),
                      radius: 58,
                      child:
                          Image.asset('assets/homeimages/bi_camera-fill.png'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Clinic logo',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Click on the camera to add',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Colors.grey),
                      ),
                      Text(
                        'Clinic logo',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 10),
                  child: TextField(
                    controller: text1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Clinic name',
                      hintStyle: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 10),
                  child: TextField(
                    controller: text2,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Admin name',
                      hintStyle: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 10),
                  child: TextField(
                    controller: text3,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Mobile no',
                      hintStyle: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 10),
                  child: TextField(
                    controller: text4,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Clinic's Email",
                      hintStyle: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              GestureDetector(
                onTap: () {
                  if (text1.text.isEmpty &&
                      text2.text.isEmpty &&
                      text3.text.isEmpty &&
                      text4.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please fill in all the details')),
                    );
                  }
                },
                child: Center(
                  child: Container(
                    height: 55,
                    width: 220,
                    decoration: BoxDecoration(
                      color: text1.text.isEmpty &&
                              text2.text.isEmpty &&
                              text3.text.isEmpty &&
                              text4.text.isEmpty
                          ? Color(0xffF8F7FC)
                          : Color(0xff32856E),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        'Save',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          color: text1.text.isEmpty &&
                                  text2.text.isEmpty &&
                                  text3.text.isEmpty &&
                                  text4.text.isEmpty
                              ? Colors.grey
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//Color(0xffF8F7FC)