import 'package:finalhealtether/ThemeUi/uitheme.dart';
import 'package:flutter/material.dart';

class EditProfile2 extends StatefulWidget {
  const EditProfile2({super.key});

  @override
  State<EditProfile2> createState() => _EditProfile2State();
}

class _EditProfile2State extends State<EditProfile2> {
  TextEditingController positionctr = TextEditingController();
  TextEditingController firstNameCtr = TextEditingController();
  TextEditingController lastNameCtr = TextEditingController();
  TextEditingController ageCtr = TextEditingController();

  String SelectTitle = "";
  String SelectBirthdate = "";
  String SelectGender = "";
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
                                  border: Border.all(color:  AppColors.primary),
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
                                  border: Border.all(color:  AppColors.primary),
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
                                  border: Border.all(color:  AppColors.primary),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // personaldetailsLwX (126:4848)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 15 * fem),
                          child: Text(
                            'Personal Details ',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.3899999857 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupxzzmSjf (5vSzi79fa5X1hsMJd2XZzM)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 72 * fem),
                          width: 529 * fem,
                          height: 520 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // polygon6AvZ (126:4805)
                                left: 55 * fem,
                                top: 78.9999992847 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    child: Image.asset(
                                      'assets/images/polygon-6-nZb.png',
                                      width: 20 * fem,
                                      height: 20 * fem,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // frame260950963X (126:4808)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Container(
                                  width: 529 * fem,
                                  height: 520 * fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // frame26095181gH (126:4809)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 202 * fem, 16 * fem),
                                        width: double.infinity,
                                        height: 120 * fem,
                                        child: Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // group36525kds (126:4810)
                                              margin: EdgeInsets.fromLTRB(0 * fem,
                                                  0 * fem, 16 * fem, 0 * fem),
                                              padding: EdgeInsets.fromLTRB(
                                                  40 * fem,
                                                  45 * fem,
                                                  40 * fem,
                                                  45 * fem),
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0xfff1e7f9),
                                                borderRadius:
                                                BorderRadius.circular(
                                                    60 * fem),
                                              ),
                                              child: Center(
                                                // bicamerafillez9 (126:4812)
                                                child: SizedBox(
                                                  width: 40 * fem,
                                                  height: 30 * fem,
                                                  child: Image.asset(
                                                    'assets/images/camera.png',
                                                    width: 40 * fem,
                                                    height: 30 * fem,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // clickonthecameratoaddaprofilep (126:4816)
                                              constraints: BoxConstraints(
                                                maxWidth: 191 * fem,
                                              ),
                                              child: Text(
                                                'Click on the camera to add a  Profile photo.',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 14 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5 * ffem / fem,
                                                  color: Color(0xff7a7a7a),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
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
                                                    // textfieldZDw (148:4541)
                                                    padding: EdgeInsets.fromLTRB(
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem),
                                                    width: 358 * fem,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffececec),
                                                    ),
                                                    child: TextFormField(
                                                      // controller: positionctr,
                                                      textAlignVertical:
                                                      TextAlignVertical
                                                          .center,
                                                      keyboardType:
                                                      TextInputType.name,
                                                      textInputAction:
                                                      TextInputAction.next,
                                                      decoration: InputDecoration(
                                                        hintText: 'ENT Specialist',
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
                                                        color: Color(0xff2c2c2c),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 12 * fem,
                                                  ),
                                                  Container(
                                                    // textfieldZDw (148:4541)
                                                    padding: EdgeInsets.fromLTRB(
                                                        16 * fem,
                                                        0 * fem,
                                                        16 * fem,
                                                        0* fem),
                                                    width: 358 * fem,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffececec),
                                                    ),
                                                    child: TextFormField(
                                                      // controller: positionctr,
                                                      textAlignVertical:
                                                      TextAlignVertical
                                                          .center,
                                                      keyboardType:
                                                      TextInputType.name,
                                                      textInputAction:
                                                      TextInputAction.next,
                                                      decoration: InputDecoration(
                                                        hintText: 'Dr',
                                                        suffixIcon:Icon(Icons.arrow_drop_down_outlined,size: 12,),
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
                                                        color: Color(0xff2c2c2c),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 12 * fem,
                                                  ),
                                                  Container(
                                                    // textfieldZDw (148:4541)
                                                    padding: EdgeInsets.fromLTRB(
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem),
                                                    width: 358 * fem,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffececec),
                                                    ),
                                                    child: TextFormField(
                                                      // controller: positionctr,
                                                      textAlignVertical:
                                                      TextAlignVertical
                                                          .center,
                                                      keyboardType:
                                                      TextInputType.name,
                                                      textInputAction:
                                                      TextInputAction.next,
                                                      decoration: InputDecoration(
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
                                                        FontWeight.w400,
                                                        height:
                                                        1.2125 * ffem / fem,
                                                        color: Color(0xff2c2c2c),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // frame2609521469 (148:4563)
                                              margin: EdgeInsets.fromLTRB(0 * fem,
                                                  0 * fem, 0* fem, 12 * fem),
                                              width: MediaQuery.of(context).size.width*0.92,
                                              height: 54 * fem,
                                              child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // textfieldZDw (148:4541)
                                                    padding: EdgeInsets.fromLTRB(
                                                        16 * fem,
                                                        0 * fem,
                                                        16 * fem,
                                                        0* fem),
                                                    width: 160 * fem,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffececec),
                                                    ),
                                                    child: TextFormField(
                                                      // controller: positionctr,
                                                      textAlignVertical:
                                                      TextAlignVertical
                                                          .center,
                                                      keyboardType:
                                                      TextInputType.name,
                                                      textInputAction:
                                                      TextInputAction.next,
                                                      decoration: InputDecoration(
                                                        hintText: '4/12/1993',
                                                        hintStyle: TextStyle(
                                                            color: Colors.black
                                                        ),
                                                        suffixIcon:Image.asset('assets/images/downarrow.png',width: 15,),
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
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Container(
                                                    // textfieldjrV (148:4559)
                                                    padding: EdgeInsets.fromLTRB(
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem,
                                                        16 * fem),
                                                    width: 128 * fem,
                                                    height: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffececec),
                                                    ),
                                                    child: TextFormField(
                                                      controller: positionctr,
                                                      textAlignVertical:
                                                      TextAlignVertical
                                                          .center,
                                                      keyboardType:
                                                      TextInputType.name,
                                                      textInputAction:
                                                      TextInputAction.next,
                                                      decoration: InputDecoration(
                                                        hintText: '30',
                                                        hintStyle: TextStyle(
                                                          color: Colors.black
                                                        ),
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
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // textfielddgy (148:4564)
                                              margin: EdgeInsets.fromLTRB(0 * fem,
                                                  0 * fem, 171 * fem, 0 * fem),
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

                                                      'Male'
                                                      ,
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
                            //         builder: (context) => Edit_MemberScreen1()));
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
