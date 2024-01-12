import 'package:finalhealtether/screens/Records/Patient%20Record/Add%20new%20Patient/Addnewpatient3.dart';
import 'package:flutter/material.dart';

import '../../../../ThemeUi/uitheme.dart';

class AddNewPatient2 extends StatefulWidget {
  const AddNewPatient2({super.key});

  @override
  State<AddNewPatient2> createState() => _AddNewPatient2State();
}

class _AddNewPatient2State extends State<AddNewPatient2> {
  var contactDetails1 = TextEditingController();
  var contactDetails2 = TextEditingController();
  var anotherNumber = TextEditingController();
  var address = TextEditingController();
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
            // addmemberi8m (126:4951)
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
                    // autogroupg2eqVz5 (5vT93XvpbSF5N3kvj4g2eq)
                    padding: EdgeInsets.fromLTRB(
                        16 * fem, 16 * fem, 16 * fem, 23 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // frame353RMw (126:5001)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 15 * fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle1216MFb (126:5002)
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
                                // rectangle12154A1 (126:5003)
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
                                // rectangle1217nLu (126:5004)
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
                                // rectangle1218hyf (126:5005)
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
                          // frame26095223nd (148:4574)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 32 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame2609506Na1 (126:4978)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 16 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // contactdetailsV8q (126:4979)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                      child: Text(
                                        'Contact Details ',
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
                                      // frame3529z5 (126:4980)
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // textfieldVo3 (148:4568)
                                            padding: EdgeInsets.fromLTRB(16 * fem,
                                                16 * fem, 16 * fem, 16 * fem),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0xffececec),
                                            ),
                                            child: TextFormField(
                                              controller: contactDetails1,
                                              textAlignVertical:
                                              TextAlignVertical.center,
                                              keyboardType: TextInputType.phone,
                                              textInputAction:
                                              TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: '3154486564',
                                                isCollapsed: true,
                                                contentPadding: EdgeInsets.zero,
                                                border: InputBorder.none,
                                              ),
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 18 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2125 * ffem / fem,
                                                color: Color(0xff2c2c2c),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Container(
                                            // textfieldVo3 (148:4568)
                                            padding: EdgeInsets.fromLTRB(16 * fem,
                                                16 * fem, 16 * fem, 16 * fem),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0xffececec),
                                            ),
                                            child: TextFormField(
                                              controller: contactDetails2,
                                              textAlignVertical:
                                              TextAlignVertical.center,
                                              keyboardType: TextInputType.phone,
                                              textInputAction:
                                              TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: '9954486564',
                                                isCollapsed: true,
                                                contentPadding: EdgeInsets.zero,
                                                border: InputBorder.none,
                                              ),
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 18 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2125 * ffem / fem,
                                                color: Color(0xff2c2c2c),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Visibility(
                                            visible: false,
                                            child: Container(
                                              // textfieldVo3 (148:4568)
                                              padding: EdgeInsets.fromLTRB(16 * fem,
                                                  16 * fem, 16 * fem, 16 * fem),
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0xffececec),
                                              ),
                                              child: TextFormField(
                                                textAlignVertical:
                                                TextAlignVertical.center,
                                                keyboardType: TextInputType.phone,
                                                textInputAction:
                                                TextInputAction.next,
                                                decoration: InputDecoration(
                                                  isCollapsed: true,
                                                  contentPadding: EdgeInsets.zero,
                                                  border: InputBorder.none,
                                                ),
                                                style: TextStyle(
                                                  fontFamily: 'Inter',
                                                  fontSize: 18 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2125 * ffem / fem,
                                                  color: Color(0xff2c2c2c),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16 * fem,
                                          ),
                                          Container(
                                            // frame399mkZ (126:4982)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 176 * fem, 0 * fem),
                                            padding: EdgeInsets.fromLTRB(0 * fem,
                                                6 * fem, 0 * fem, 6 * fem),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color:
                                                        AppColors.primary))),
                                            child: Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // group363734zZ (126:4983)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      12 * fem,
                                                      0 * fem),
                                                  width: 14 * fem,
                                                  height: 14 * fem,
                                                  child: Image.asset(
                                                    'assets/images/group-36373.png',
                                                    width: 14 * fem,
                                                    height: 14 * fem,
                                                  ),
                                                ),
                                                Text(
                                                  // addanothernumberBZP (126:4986)
                                                  'Add another number',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height:
                                                    1.2000000477 * ffem / fem,
                                                    letterSpacing: 0.48 * fem,
                                                    color: AppColors.primary,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16 * fem,
                                          ),
                                          Container(
                                            // textfield5em (148:4571)
                                            padding: EdgeInsets.fromLTRB(16 * fem,
                                                16 * fem, 16 * fem, 16 * fem),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0xffececec),
                                            ),
                                            child: TextFormField(
                                              controller: anotherNumber,
                                              textAlignVertical:
                                              TextAlignVertical.center,
                                              keyboardType:
                                              TextInputType.emailAddress,
                                              textInputAction:
                                              TextInputAction.next,
                                              decoration: InputDecoration(
                                                hintText: 'kimjones@gmail.com',
                                                isCollapsed: true,
                                                contentPadding: EdgeInsets.zero,
                                                border: InputBorder.none,
                                              ),
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 18 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2125 * ffem / fem,
                                                color: Color(0xff2c2c2c),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16 * fem,
                                          ),
                                          Container(
                                            // frame400xTf (126:4988)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 190 * fem, 0 * fem),
                                            padding: EdgeInsets.fromLTRB(0 * fem,
                                                6 * fem, 0 * fem, 6 * fem),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color:
                                                        AppColors.primary))),
                                            child: Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // group36373erH (126:4989)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      12 * fem,
                                                      0 * fem),
                                                  width: 14 * fem,
                                                  height: 14 * fem,
                                                  child: Image.asset(
                                                    'assets/images/group-36373.png',
                                                    width: 14 * fem,
                                                    height: 14 * fem,
                                                  ),
                                                ),
                                                Text(
                                                  // addanotheremailAJq (126:4992)
                                                  'Add another email',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height:
                                                    1.2000000477 * ffem / fem,
                                                    letterSpacing: 0.48 * fem,
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
                                // frame2609505gny (126:4993)
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // addressEpV (126:4994)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                      child: Text(
                                        'Address',
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
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Color(0xffececec),
                                      ),
                                      child: TextFormField(
                                        controller: address,
                                        minLines: 7, // Set the minimum number of lines (1 in this case)
                                        maxLines: 7, // Set the maximum number of lines (7 in this case)
                                        decoration: InputDecoration(
                                          hintText: 'Enter your address',
                                          border: InputBorder.none,
                                        ),
                                        keyboardType: TextInputType.multiline,
                                        style: TextStyle(fontSize: 16),
                                        // Add other properties or validators as needed
                                      ),

                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddNewPatient3()));
                          },
                          child: Container(
                            // buttons9ru (126:5006)
                            padding: EdgeInsets.fromLTRB(
                                158 * fem, 19 * fem, 141.25 * fem, 19 * fem),
                            width: double.infinity,
                            height: 59 * fem,
                            decoration: BoxDecoration(
                              color:AppColors.primary,
                              borderRadius: BorderRadius.circular(7 * fem),
                            ),
                            child: Container(
                              // autogroup77idUuB (5vT9sm3Tu8TKu65LF777iD)
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
