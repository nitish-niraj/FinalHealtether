import 'package:finalhealtether/ThemeUi/uitheme.dart';
import 'package:flutter/material.dart';

class AddMemberPaymentDetails extends StatefulWidget {
  const AddMemberPaymentDetails({super.key});

  @override
  State<AddMemberPaymentDetails> createState() => _AddMemberPaymentDetailsState();
}

class _AddMemberPaymentDetailsState extends State<AddMemberPaymentDetails> {
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
          decoration: BoxDecoration (
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(20*fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                // autogroupndrd1zD (5vTMhkfm4VPaXKQRWRnDrD)
                padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 16*fem, 23*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // frame353Lmb (126:5371)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle1216fYy (126:5372)
                            width: 8*fem,
                            height: 8*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(6*fem),
                              border: Border.all(color: AppColors.primary),
                            ),
                          ),
                          SizedBox(
                            width: 13*fem,
                          ),
                          Container(
                            // rectangle1217NyB (126:5373)
                            width: 8*fem,
                            height: 8*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(6*fem),
                              border: Border.all(color: AppColors.primary),
                            ),
                          ),
                          SizedBox(
                            width: 13*fem,
                          ),
                          Container(
                            // rectangle1218tgd (126:5374)
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
                            // rectangle1215pKP (126:5375)
                            width: 52*fem,
                            height: 8*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(6*fem),
                              color:AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame2609523Znm (148:4616)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 115*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame2609506JEZ (126:5360)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // paymentsdetailse3X (126:5361)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                  child: Text(
                                    'Payments Details',
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
                                  // frame352woK (126:5362)
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // upiid6gD (126:5364)
                                        'UPI ID',
                                        style: TextStyle (
                                          fontFamily:   'Poppins',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.28125*ffem/fem,
                                          letterSpacing: -0.16*fem,
                                          color: Color(0xff1f1f1f),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16*fem,
                                      ),
                                      Container(
                                        // textfieldDF3 (148:4593)
                                        padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 16*fem, 16*fem),
                                        width: double.infinity,
                                        decoration: BoxDecoration (
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
                                              isCollapsed: true,
                                              contentPadding:
                                              EdgeInsets.zero,
                                              border:
                                              InputBorder.none,
                                              hintText: "Add UPI ID",
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
                                        // frame400try (126:5366)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 185*fem, 0*fem),
                                        padding: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 6*fem),
                                        width: double.infinity,
                                        decoration: BoxDecoration (
                                          border: Border(
                                            bottom: BorderSide( color:AppColors.primary),
                                          ),
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // group36373Csf (126:5367)
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
                                              // addanotherupiidj6u (126:5370)
                                              'Add another UPI ID',
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
                          Container(
                            // frame260950549B (126:5377)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // bankdetails14R (126:5378)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                  child: Text(
                                    'Bank Details',
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
                                  // frame2609504893 (126:5379)
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // frame260951354H (126:5380)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // textfieldc4D (148:4596)
                                              padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 16*fem, 16*fem),
                                              width: double.infinity,
                                              decoration: BoxDecoration (
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
                                                    isCollapsed: true,
                                                    contentPadding:
                                                    EdgeInsets.zero,
                                                    border:
                                                    InputBorder.none,
                                                    hintText: "Bank Name",
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
                                              height: 12*fem,
                                            ),
                                            Container(
                                              // textfieldfYH (148:4604)
                                              padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 16*fem, 16*fem),
                                              width: double.infinity,
                                              decoration: BoxDecoration (
                                                color: Color(0xffececec),
                                              ),
                                              child: TextFormField(
                                                //  controller: positionctr,
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
                                                    hintText: "Account no",
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
                                              height: 12*fem,
                                            ),
                                            Container(
                                              // textfieldx1b (148:4610)
                                              padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 16*fem, 16*fem),
                                              width: double.infinity,
                                              decoration: BoxDecoration (
                                                color: Color(0xffececec),
                                              ),
                                              child: TextFormField(
                                                //  controller: positionctr,
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
                                                    hintText: "IFSC code",
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
                                              height: 12*fem,
                                            ),
                                            Container(
                                              // textfieldShT (148:4613)
                                              padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 16*fem, 16*fem),
                                              width: double.infinity,
                                              decoration: BoxDecoration (
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
                                                    isCollapsed: true,
                                                    contentPadding:
                                                    EdgeInsets.zero,
                                                    border:
                                                    InputBorder.none,
                                                    hintText: "Account Holder's Name",
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
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // frame400YEh (126:5385)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 195*fem, 0*fem),
                                        padding: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 6*fem),
                                        width: double.infinity,
                                        decoration: BoxDecoration (
                                          border: Border(
                                            bottom: BorderSide( color: Color(0xff009394)),
                                          ),
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // group36373rFP (126:5386)
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
                                              // addanotherbankmNM (126:5389)
                                              'Add another bank',
                                              style: TextStyle (
                                                fontFamily:   'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2000000477*ffem/fem,
                                                letterSpacing: 0.48*fem,
                                                color: Color(0xff009394),
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
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {

                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Member_Profile()));

                      },
                      child: Container(

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
    );
  }
}
