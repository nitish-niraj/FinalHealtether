import 'package:finalhealtether/screens/Home/Screens/UserProfile/clinic_details_page.dart';
import 'package:finalhealtether/screens/Home/Screens/UserProfile/clinic_settings.dart';
import 'package:finalhealtether/screens/Home/Screens/UserProfile/notifications_settings.dart';
import 'package:finalhealtether/screens/Home/Screens/UserProfile/payment_settings.dart';
import 'package:finalhealtether/screens/Home/Screens/UserProfile/permissions_settings.dart';
import 'package:finalhealtether/screens/Home/Screens/Widgets/profile_menu_containers.dart';
import 'package:finalhealtether/screens/Home/Screens/HomeScreen/appointment_analysis.dart';
import 'package:finalhealtether/screens/Home/Screens/HomeScreen/feedback_page.dart';
import 'package:finalhealtether/screens/Home/Screens/HomeScreen/patient_analysis.dart';
import 'package:finalhealtether/screens/Home/Screens/HomeScreen/payment_analysis.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
        child: Column(
          children: [
            Container(
              height: 170,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 25),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 55,
                      ),
                    ),
                    SizedBox(
                      width: 26,
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
                          height: 11,
                        ),
                        Text(
                          'Dr. Kim Jones',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 34,
                              width: 58,
                              decoration: BoxDecoration(
                                color: Color(0xff32856E),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: Text(
                                  'Save',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 34,
                              width: 68,
                              decoration: BoxDecoration(
                                color: Color(0xffF5F5F5),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: Text(
                                  'Cancel',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 320,
              child: Divider(
                thickness: 2,
                color: Color(0xffEEEEEE),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ClinicDetails();
                }));
              },
              child: Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 10),
                  child: Text(
                    'Clinic details',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ClinicSettings();
                }));
              },
              child: Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 10),
                  child: Text(
                    'Clinic settings',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return PaymentSettings();
                }));
              },
              child: Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 10),
                  child: Text(
                    'Payments settings',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return NotificationSettings();
                }));
              },
              child: Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 10),
                  child: Text(
                    'Notifications settings',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return PermissionsSettings();
                }));
              },
              child: Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 10),
                  child: Text(
                    'App Permissions',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.copyright_rounded,
                      color: Colors.grey,
                      size: 12,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Copyright 2023 HealTether. All Rights Reserved.',
                      style: GoogleFonts.montserrat(
                          color: Colors.grey,
                          fontSize: 12,
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
      ),
    );
  }
}
