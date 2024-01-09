import 'package:flutter/material.dart';

import '../../../../ThemeUi/uitheme.dart';


class AddNewPatient3 extends StatefulWidget {
  const AddNewPatient3({super.key});

  @override
  State<AddNewPatient3> createState() => _AddNewPatient3State();
}

class _AddNewPatient3State extends State<AddNewPatient3> {
  @override
  Widget build(BuildContext context) {
    String SelectIDProof="";
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
            // addmemberhAM (126:5125)
            onPressed: () {},
            style: TextButton.styleFrom (
              padding: EdgeInsets.zero,
            ),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(20*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(
                    // autogroupef6dWZ3 (5vTFqAxFi7mFRB9qeYeF6D)
                    padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 16*fem, 23*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // frame353dtZ (126:5152)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle1216Adb (126:5153)
                                width: 8*fem,
                                height: 8*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(6*fem),
                                  border: Border.all(
                                      color: AppColors.primary
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 13*fem,
                              ),
                              Container(
                                // rectangle1217gM3 (126:5154)
                                width: 8*fem,
                                height: 8*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(6*fem),
                                  border: Border.all(color:AppColors.primary),
                                ),
                              ),
                              SizedBox(
                                width: 13*fem,
                              ),
                              Container(
                                // rectangle1215CqB (126:5155)
                                width: 52*fem,
                                height: 8*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(6*fem),
                                  color: AppColors.primary,
                                ),
                              ),
                              SizedBox(
                                width: 13*fem,
                              ),
                              Container(
                                // rectangle1218XsT (126:5156)
                                width: 8*fem,
                                height: 8*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(6*fem),
                                  border: Border.all(color:AppColors.primary),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupjeyv5e5 (5vTFCSWTZkTCm7HTXbJEYV)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 172*fem),
                          width: double.infinity,
                          height: 458*fem,
                          child: Stack(
                            children: [

                              Positioned(
                                // frame2609517XFB (126:5158)
                                left: 0*fem,
                                top: 0*fem,
                                child: Container(
                                  width: 358*fem,
                                  height: 458*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // frame2609506qWm (126:5159)
                                        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                                        width: double.infinity,
                                        // decoration: BoxDecoration (
                                        //   border: Border.all(color: Color(0xffe1e1e1)),
                                        // ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // documentsAJ9 (126:5160)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                              child: Text(
                                                'Documents',
                                                style: TextStyle (
                                                  fontFamily:   'Poppins',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.3899999857*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // frame352siM (126:5161)
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // textfield25T (148:4590)
                                                    padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 21*fem, 16*fem),
                                                    width: double.infinity,
                                                    decoration: BoxDecoration (
                                                      color: Color(0xffececec),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // empty9Qy (I148:4590;148:4272)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 184*fem, 0*fem),
                                                          child: Text(
                                                            'Aadhar',


                                                            style: TextStyle (
                                                              fontFamily: 'Inter',
                                                              fontSize: 18*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.2125*ffem/fem,
                                                              color:  Color(0xff2c2c2c),

                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // iconparkdownf8R (I148:4590;148:4273)
                                                          width: 10*fem,
                                                          height: 5*fem,
                                                          child: Image.asset(
                                                            'assets/images/frame.png',
                                                            width: 10*fem,
                                                            height: 5*fem,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16*fem,
                                                  ),
                                                  Container(
                                                    // textfieldyQ1 (148:4599)
                                                    padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 16*fem, 16*fem),
                                                    width: double.infinity,
                                                    decoration: BoxDecoration (
                                                      color: Color(0xffececec),
                                                    ),
                                                    child: TextFormField(
                                                      //    controller: positionctr,
                                                      textAlignVertical:
                                                      TextAlignVertical
                                                          .center,
                                                      keyboardType:
                                                      TextInputType.name,
                                                      textInputAction:
                                                      TextInputAction.next,
                                                      decoration: InputDecoration(
                                                          isCollapsed: true,
                                                          contentPadding:
                                                          EdgeInsets.zero,
                                                          border:
                                                          InputBorder.none,

                                                          hintStyle: TextStyle(
                                                              fontFamily: 'Inter',
                                                              fontSize: 18 * ffem,
                                                              fontWeight:
                                                              FontWeight.w400,
                                                              height: 1.2125 *
                                                                  ffem /
                                                                  fem,
                                                              color: Color(
                                                                  0xffa2a2a2))),
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
                                                    height: 16*fem,
                                                  ),
                                                  Container(
                                                    // frame400rCu (126:5164)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 215*fem, 0*fem),
                                                    padding: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 6*fem),
                                                    width: double.infinity,
                                                    decoration: BoxDecoration (

                                                      border: Border(
                                                        bottom: BorderSide(
                                                            color: AppColors.primary
                                                        ),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // group36373YLd (126:5165)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                                          width: 14*fem,
                                                          height: 14*fem,
                                                          child: Image.asset(
                                                            'assets/images/group-36373.png',
                                                            width: 14*fem,
                                                            height: 14*fem,
                                                          ),
                                                        ),
                                                        Text(
                                                          // addanotheridr6R (126:5168)
                                                          'Add another ID',
                                                          style: TextStyle (
                                                            fontFamily:   'Poppins',
                                                            fontSize: 16*ffem,
                                                            fontWeight: FontWeight.w700,
                                                            height: 1.2000000477*ffem/fem,
                                                            letterSpacing: 0.48*fem,
                                                            color:AppColors.primary,
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
                                      SizedBox(
                                        height: 12*fem,
                                      ),
                                      Container(
                                        // frame2609516kxV (126:5169)
                                        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                                        width: double.infinity,
                                        // decoration: BoxDecoration (
                                        //   border: Border.all(color: Color(0xffdddddd)),
                                        // ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // adddocumentsgr9 (126:5170)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                              child: Text(
                                                'Add documents',
                                                style: TextStyle (
                                                  fontFamily:   'Poppins',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.28125*ffem/fem,
                                                  letterSpacing: -0.16*fem,
                                                  color: Color(0xff1f1f1f),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // frame2609504ofs (126:5171)
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // frame2609508ZQ9 (126:5172)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                                    width: double.infinity,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // pleaseuploadimagedocumentofsiz (126:5173)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                                          child: Text(
                                                            'Please upload image/document of size less than 50Mb',
                                                            style: TextStyle (
                                                              fontFamily:   'Poppins',
                                                              fontSize: 12*ffem,
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.7083333333*ffem/fem,
                                                              letterSpacing: -0.12*fem,
                                                              fontStyle: FontStyle.italic,
                                                              color: Color(0xff666666),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // uploado3b (126:5174)
                                                          padding: EdgeInsets.fromLTRB(8*fem, 8*fem, 11.42*fem, 8*fem),
                                                          width: double.infinity,
                                                          decoration: BoxDecoration (
                                                            color: Color(0xff3d3d3d),
                                                            borderRadius: BorderRadius.circular(4*fem),
                                                          ),
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                              Container(
                                                                // browsetouploaddocumentsigM (126:5175)
                                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 94.41*fem, 0*fem),
                                                                child: Text(
                                                                  'Browse to upload documents',
                                                                  style: TextStyle (
                                                                    fontFamily:   'Poppins',
                                                                    fontSize: 14*ffem,
                                                                    fontWeight: FontWeight.w400,
                                                                    height: 1.1999999455*ffem/fem,
                                                                    letterSpacing: 0.28*fem,
                                                                    color: Color(0xffffffff),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                // uploadcloud2BF (126:5176)
                                                                width: 31.17*fem,
                                                                height: 24*fem,
                                                                child: Image.asset(
                                                                  'assets/images/upload-cloud.png',
                                                                  width: 31.17*fem,
                                                                  height: 24*fem,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    // frame400wZ7 (126:5182)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 166*fem, 0*fem),
                                                    padding: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 0*fem),
                                                    width: double.infinity,
                                                    decoration: BoxDecoration (

                                                      border: Border(
                                                        bottom: BorderSide(  color: AppColors.primary),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // group36373TGZ (126:5183)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                                          width: 14*fem,
                                                          height: 14*fem,
                                                          child: Image.asset(
                                                            'assets/images/group-36373.png',
                                                            width: 14*fem,
                                                            height: 12*fem,
                                                          ),
                                                        ),
                                                        Text(
                                                          // addotherdocumentsxz1 (126:5186)
                                                          'Add other documents',
                                                          style: TextStyle (
                                                            fontFamily:   'Poppins',
                                                            fontSize: 16*ffem,
                                                            fontWeight: FontWeight.w700,
                                                            height: 1.2000000477*ffem/fem,
                                                            letterSpacing: 0.48*fem,
                                                            color: AppColors.primary,
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
                                      Divider(
                                          thickness: 1*fem,
                                          color:  Color(0xffd9d9d9)
                                      ),
                                      Container(

                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // list2ys (126:5188)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                              child: Text(
                                                'List',
                                                style: TextStyle (
                                                  fontFamily:   'Poppins',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.28125*ffem/fem,
                                                  letterSpacing: -0.16*fem,
                                                  color: Color(0xff1f1f1f),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // norecordsavailablekQ5 (126:5190)
                                              'No records available.',
                                              style: TextStyle (
                                                fontFamily:   'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.0499999523*ffem/fem,
                                                letterSpacing: 0.32*fem,
                                                color: Color(0xff6c6c6c),
                                              ),
                                            ),

                                            Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  2.5 * fem,
                                                  4.53 * fem,
                                                  0.0 * fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // aadharcardpngx9b (126:5322)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        169 * fem,
                                                        0 * fem),
                                                    child: Text(
                                                      'Aadhar card.png',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16 * ffem,
                                                        fontWeight:
                                                        FontWeight.w400,
                                                        height: 1.0499999523 *
                                                            ffem /
                                                            fem,
                                                        letterSpacing: 0.32 * fem,
                                                        color: Color(0xff6c6c6c),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // icbaselinedeletefph (126:5323)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0.5 * fem,
                                                        15.17 * fem,
                                                        0 * fem),
                                                    width: 12.83 * fem,
                                                    height: 14.5 * fem,
                                                    child: Image.asset(
                                                      'assets/images/deleteicon.png',
                                                      width: 12.83 * fem,
                                                      height: 14.5 * fem,
                                                    ),
                                                  ),
                                                  Container(
                                                    // mdiprintpreviewmsj (126:5325)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0.4 * fem,
                                                        0 * fem,
                                                        0 * fem),
                                                    width: 12.47 * fem,
                                                    height: 14.4 * fem,
                                                    child: Image.asset(
                                                      'assets/images/mdi-print-preview-N2h.png',
                                                      width: 12.47 * fem,
                                                      height: 14.4 * fem,
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
                          onTap: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
                          },
                          child: Container(
                            // buttonsHQ1 (126:5157)
                            padding: EdgeInsets.fromLTRB(158*fem, 19*fem, 141.25*fem, 19*fem),
                            width: double.infinity,
                            height: 59*fem,
                            decoration: BoxDecoration (
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(7*fem),
                            ),
                            child: Container(

                              width: double.infinity,
                              height: double.infinity,
                              child: Text(
                                'Save',
                                style: TextStyle (
                                  fontFamily:   'Poppins',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.28125*ffem/fem,
                                  letterSpacing: 0.16*fem,
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
