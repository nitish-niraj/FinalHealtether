import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../themeUI/ui.dart';

class AddNewPatient1 extends StatefulWidget {
  const AddNewPatient1({super.key});

  @override
  State<AddNewPatient1> createState() => _AddNewPatient1State();
}

class _AddNewPatient1State extends State<AddNewPatient1> {


  TextEditingController positionctr = TextEditingController();
  TextEditingController Dr = TextEditingController();
  TextEditingController Kim = TextEditingController();
  TextEditingController Jones = TextEditingController();
  TextEditingController age = TextEditingController();
  var birthDate = TextEditingController();
  var weight = TextEditingController();
  var height = TextEditingController();
  DateTime selectedDate = DateTime.now();

  String selectedGenderType = 'Male';
  var genderType =[
    'Male',
    'Female',
    'other'
  ];

  Future<void> _selectDate(BuildContext context) async {
    birthDate.text = selectedDate.toString().split(" ")[0];
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate:
      DateTime.now(), // Initial date displayed when the picker opens
      firstDate: DateTime(2000), // Minimum allowable date
      lastDate: DateTime(2101), // Maximum allowable date
    );

    if (picked != null && picked != selectedDate) {
      // Do something with the selected date, e.g., update it in your state
      setState(() {
        selectedDate = picked;
      });
    }
  }




  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Member',
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(20 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupe9zvyZF (5vT1hpzVE5s5syRuP6e9zV)
                    padding: EdgeInsets.fromLTRB(
                        16 * fem, 16 * fem, 0 * fem, 23 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // frame353hVF (126:4849)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 15 * fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle1215Rw3 (126:4850)
                                width: 52 * fem,
                                height: 8 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  color: AppColors.primary,
                                ),
                              ),
                              SizedBox(
                                width: 13 * fem,
                              ),
                              Container(
                                // rectangle1216wPb (126:4851)
                                width: 8 * fem,
                                height: 8 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  border: Border.all(color: AppColors.primary),
                                ),
                              ),
                              SizedBox(
                                width: 13 * fem,
                              ),
                              Container(
                                // rectangle1217faV (126:4852)
                                width: 8 * fem,
                                height: 8 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  border: Border.all(color: AppColors.primary),
                                ),
                              ),
                              SizedBox(
                                width: 13 * fem,
                              ),
                              Container(
                                // rectangle1218bj3 (126:4853)
                                width: 8 * fem,
                                height: 8 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6 * fem),
                                  border: Border.all(color: AppColors.primary),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupxzzmSjf (5vSzi79fa5X1hsMJd2XZzM)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 72 * fem),
                          width: 529 * fem,
                          height: 480 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // frame260950963X (126:4808)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Container(
                                  padding: EdgeInsets.only(top: 10),
                                  width: 529 * fem,
                                  height: 560 * fem,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children:[
                                      Text('Personal Details ',style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                      ),),
                                      Container(
                                        // frame352t7o (126:4817)
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // autogroupeyhpqHw (5vT12mHF8sKvcM6PQueyHP)
                                              padding: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  12 * fem),
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // textfieldYVB (148:4549)
                                                    padding:
                                                    EdgeInsets.fromLTRB(
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem),
                                                    width: 358 * fem,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffececec),
                                                    ),
                                                    child: TextFormField(
                                                      controller: Kim,
                                                      textAlignVertical:
                                                      TextAlignVertical
                                                          .center,
                                                      keyboardType:
                                                      TextInputType.name,
                                                      textInputAction:
                                                      TextInputAction.next,
                                                      decoration:
                                                      InputDecoration(
                                                        hintText: 'Kim',
                                                        isCollapsed: true,
                                                        contentPadding:
                                                        EdgeInsets.zero,
                                                        border:
                                                        InputBorder.none,
                                                      ),
                                                      style: TextStyle(
                                                        fontFamily: 'Inter',
                                                        fontSize: 18 * ffem,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        height:
                                                        1.2125 * ffem / fem,
                                                        color:
                                                        Color(0xff2c2c2c),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 12 * fem,
                                                  ),
                                                  Container(
                                                    // textfieldoR7 (148:4552)
                                                    padding:
                                                    EdgeInsets.fromLTRB(
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem),
                                                    width: 358 * fem,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffececec),
                                                    ),
                                                    child: TextFormField(
                                                      controller: Jones,
                                                      textAlignVertical:
                                                      TextAlignVertical
                                                          .center,
                                                      keyboardType:
                                                      TextInputType.name,
                                                      textInputAction:
                                                      TextInputAction.next,
                                                      decoration:
                                                      InputDecoration(
                                                        hintText: 'Jones',
                                                        isCollapsed: true,
                                                        contentPadding:
                                                        EdgeInsets.zero,
                                                        border:
                                                        InputBorder.none,
                                                      ),
                                                      style: TextStyle(
                                                        fontFamily: 'Inter',
                                                        fontSize: 18 * ffem,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        height:
                                                        1.2125 * ffem / fem,
                                                        color:
                                                        Color(0xff2c2c2c),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // frame2609521469 (148:4563)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  12 * fem),
                                              width: double.infinity,
                                              height: 54 * fem,
                                              child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // textfieldnH3 (148:4556)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        16 * fem,
                                                        0 * fem),
                                                    padding:
                                                    EdgeInsets.fromLTRB(
                                                        16 * fem,
                                                        16 * fem,
                                                        21 * fem,
                                                        16 * fem),
                                                    height: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffececec),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                      children: [
                                                        Container(
                                                          width: MediaQuery.of(context).size.width * 0.4,
                                                          child: TextFormField(
                                                              controller: birthDate,
                                                              decoration: InputDecoration(
                                                                  suffixIcon: InkWell(
                                                                      onTap: () {
                                                                        setState(() {
                                                                          _selectDate(context);
                                                                        });
                                                                      },
                                                                      child: Icon(
                                                                        Icons.arrow_drop_down,
                                                                        size: 30,
                                                                        color: Colors.black,
                                                                      )),
                                                                  hintText: 'Select Birthdate',
                                                                  hintStyle: TextStyle(
                                                                  ),
                                                                  border: InputBorder.none,
                                                                  contentPadding: EdgeInsets.symmetric(vertical: 5)
                                                              ),
                                                              keyboardType: TextInputType.datetime,
                                                              style: GoogleFonts.arimo(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.normal,
                                                                color: Colors.black,
                                                              ),
                                                              cursorColor: Color(0xFF6A798A)),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    // textfieldjrV (148:4559)
                                                    padding:
                                                    EdgeInsets.fromLTRB(
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem),
                                                    width: 150 * fem,
                                                    height: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffececec),
                                                    ),
                                                    child: TextFormField(
                                                      controller: age,
                                                      textAlignVertical:
                                                      TextAlignVertical
                                                          .center,
                                                      keyboardType:
                                                      TextInputType.name,
                                                      textInputAction:
                                                      TextInputAction.next,
                                                      decoration:
                                                      InputDecoration(
                                                        hintText: '30',
                                                        isCollapsed: true,
                                                        contentPadding:
                                                        EdgeInsets.zero,
                                                        border:
                                                        InputBorder.none,
                                                      ),
                                                      style: TextStyle(
                                                        fontFamily: 'Inter',
                                                        fontSize: 18 * ffem,
                                                        fontWeight:
                                                        FontWeight.w400,
                                                        height:
                                                        1.2125 * ffem / fem,
                                                        color:
                                                        Color(0xff2c2c2c),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Container(
                                              // textfielddgy (148:4564)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  171 * fem,
                                                  0 * fem),
                                              padding: EdgeInsets.fromLTRB(
                                                  16 * fem,
                                                  16 * fem,
                                                  21 * fem,
                                                  16 * fem),
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0xffececec),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // emptyY3F (I148:4564;148:4272)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        248 * fem,
                                                        0 * fem),
                                                    child: Text(
                                                      'Male',
                                                      style: TextStyle(
                                                        fontFamily: 'Inter',
                                                        fontSize: 18 * ffem,
                                                        fontWeight:
                                                        FontWeight.w400,
                                                        height:
                                                        1.2125 * ffem / fem,
                                                        color:
                                                        Color(0xff2c2c2c),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // iconparkdown4GV (I148:4564;148:4273)
                                                    width: 10 * fem,
                                                    height: 5 * fem,
                                                    child: Image.asset(
                                                      'assets/images/frame.png',
                                                      width: 10 * fem,
                                                      height: 5 * fem,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 12,),
                                            Container(
                                              // frame2609521469 (148:4563)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  12 * fem),
                                              width: MediaQuery.of(context).size.width*0.92,
                                              height: 54 * fem,
                                              child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    // textfieldjrV (148:4559)
                                                    padding:
                                                    EdgeInsets.fromLTRB(
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem),
                                                    width:  MediaQuery.of(context).size.width*0.44,
                                                    height: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffececec),
                                                    ),
                                                    child: TextFormField(
                                                      controller: height,
                                                      textAlignVertical:
                                                      TextAlignVertical
                                                          .center,
                                                      keyboardType:
                                                      TextInputType.name,
                                                      textInputAction:
                                                      TextInputAction.next,
                                                      decoration:
                                                      InputDecoration(
                                                        hintText: 'Height',
                                                        isCollapsed: true,
                                                        contentPadding:
                                                        EdgeInsets.zero,
                                                        border:
                                                        InputBorder.none,
                                                      ),
                                                      style: TextStyle(
                                                        fontFamily: 'Inter',
                                                        fontSize: 18 * ffem,
                                                        fontWeight:
                                                        FontWeight.w400,
                                                        height:
                                                        1.2125 * ffem / fem,
                                                        color:
                                                        Color(0xff2c2c2c),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // textfieldjrV (148:4559)
                                                    padding:
                                                    EdgeInsets.fromLTRB(
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem),
                                                    width:  MediaQuery.of(context).size.width*0.44,
                                                    height: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffececec),
                                                    ),
                                                    child: TextFormField(
                                                      controller: weight,
                                                      textAlignVertical:
                                                      TextAlignVertical
                                                          .center,
                                                      keyboardType:
                                                      TextInputType.name,
                                                      textInputAction:
                                                      TextInputAction.next,
                                                      decoration:
                                                      InputDecoration(
                                                        hintText: 'Weight',
                                                        isCollapsed: true,
                                                        contentPadding:
                                                        EdgeInsets.zero,
                                                        border:
                                                        InputBorder.none,
                                                      ),
                                                      style: TextStyle(
                                                        fontFamily: 'Inter',
                                                        fontSize: 18 * ffem,
                                                        fontWeight:
                                                        FontWeight.w400,
                                                        height:
                                                        1.2125 * ffem / fem,
                                                        color:
                                                        Color(0xff2c2c2c),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             ));
                          },
                          child: Container(
                            // buttonsBru (126:4854)
                            padding: EdgeInsets.fromLTRB(
                                158 * fem, 19 * fem, 141.25 * fem, 19 * fem),
                            width: 358 * fem,
                            height: 59 * fem,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(7 * fem),
                            ),
                            child: Container(
                              // autogroupcukh7Vf (5vT2RixLxuKTKduWjncukh)
                              width: double.infinity,
                              height: double.infinity,
                              child: Text(
                                'Save',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.28125 * ffem / fem,
                                  letterSpacing: 0.16 * fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
