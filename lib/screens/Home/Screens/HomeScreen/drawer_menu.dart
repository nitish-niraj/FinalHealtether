import 'package:finalhealtether/screens/Home/Screens/UserProfile/settings_page.dart';
import 'package:finalhealtether/screens/Home/Screens/Widgets/profile_menu_containers.dart';
import 'package:finalhealtether/screens/Home/Screens/HomeScreen/appointment_analysis.dart';
import 'package:finalhealtether/screens/Home/Screens/HomeScreen/feedback_page.dart';
import 'package:finalhealtether/screens/Home/Screens/HomeScreen/patient_analysis.dart';
import 'package:finalhealtether/screens/Home/Screens/HomeScreen/payment_analysis.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  bool _isYesButtonClicked = false;
  bool _isNoButtonClicked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Color(0xff32856E),
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 25),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 45,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(247, 247, 222, 4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Super Admin',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Dr. Kim Jones',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'ENT Spealist',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Jones Clinic',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Jones Clinic',
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 20,
                          child: Icon(
                            Icons.add,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Add another ',
                            style: GoogleFonts.montserrat(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'profile',
                            style: GoogleFonts.montserrat(
                                color: Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 60,
            width: 280,
            decoration: BoxDecoration(
              color: Color(0xffEEEEEE),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 2.0, left: 10),
              child: Row(
                children: [
                  Text(
                    'Upgrade to ',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'HealthTether+',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff32856E),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return PatientAnalysis();
              }));
            },
            child: ProfileMenuCont(
              text: 'Patients Analysis',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AppointmentAnalysis();
              }));
            },
            child: ProfileMenuCont(
              text: 'Appointment Analysis',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return PaymentAnalysis();
              }));
            },
            child: ProfileMenuCont(
              text: 'Payment Analysis',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SettingsPage();
                }));
              },
              child: ProfileMenuCont(
                text: 'Settings',
              )),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                        child: Container(
                      width: 320,
                      height: 120,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Do you want to Logout?',
                            style: GoogleFonts.montserrat(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isYesButtonClicked = true;
                                    _isNoButtonClicked = false;
                                  });
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  height: 50,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    color: (_isYesButtonClicked == false &&
                                            _isNoButtonClicked == true)
                                        ? Colors.grey[300]
                                        : Color(0xff32856E),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Yes',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        color: (_isYesButtonClicked == false &&
                                                _isNoButtonClicked == true)
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _isYesButtonClicked = false;
                                  _isNoButtonClicked = true;
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  height: 50,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    color: (_isYesButtonClicked == true &&
                                            _isNoButtonClicked == false)
                                        ? Colors.grey[300]
                                        : Color(0xff32856E),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'No',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        color: (_isYesButtonClicked == true &&
                                                _isNoButtonClicked == false)
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ));
                  },
                );
              },
              child: ProfileMenuCont(
                text: 'Logout',
              )),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
              onTap: () {},
              child: ProfileMenuCont(
                text: 'Help',
              )),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return FeedBackPage();
                }));
              },
              child: ProfileMenuCont(
                text: 'Feedback',
              )),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Privacy policy',
                    style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Terms and conditions',
                    style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
